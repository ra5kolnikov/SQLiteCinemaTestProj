using System;
using System.Windows.Input;

namespace InfoMovie.Helpers {
  public class RelayCommand<T> : ICommand {
    private readonly Action<T> _execute;
    private readonly Func<T, bool> _canExecute;

    public RelayCommand(Action<T> execute, Func<T, bool> canExecute = null) {
      _execute = execute ?? throw new ArgumentNullException(nameof(execute));
      _canExecute = canExecute;
    }

    public RelayCommand(Action execute, Func<bool> canExecute = null) {
      _execute =
          _ => execute();
      _canExecute =
          _ => canExecute?.Invoke() ?? true;
    }

    public event EventHandler CanExecuteChanged;

    public bool CanExecute(object parameter) {
      if (_canExecute != null) {
        if (parameter == null && typeof(T).IsValueType) {
          return _canExecute(default(T));
        } else {
          return _canExecute((T)parameter);
        }
      }
      return true;
    }

    public void Execute(object parameter) {
      if (parameter == null && typeof(T).IsValueType) {
        _execute(default(T));
      } else {
        _execute((T)parameter);
      }
    }

    public void RaiseCanExecuteChanged() {
      CanExecuteChanged?.Invoke(this, EventArgs.Empty);
    }
  }
}