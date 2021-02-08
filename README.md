#  GuannReader
GuannReader is a vim-like pdf reader. Users can read PDF files without a mouse or a trackpad, but fully with a keyboard.

## Usage
Tpye ':' to enter command mode and 'esc' to go back to normal mode.

### Command Mode
- 'open': open a file
- 'q': quit the app

### Normal mode
- 'j': scroll down with a small step
- 'k': scroll up with a small step
- 'd': scroll down with a big step
- 'u': scroll up with a big step

## Todos
- File system: [tutorial 1](https://www.raywenderlich.com/666-filemanager-class-tutorial-for-macos-getting-started-with-the-file-system)
- PDFView
- Outline view: [tutorial 1](https://www.raywenderlich.com/1201-nsoutlineview-on-macos-tutorial)
- Preferences: Both a GUI and a configuration file.
- Launch page.
- More vim functions.
- LOGO
- i18n
- Working on NSDocumentController for open file in menu item [File -> Open], refer [iina](https://github.com/iina/iina/blob/develop/iina/AppDelegate.swift)  @IBAction func openFile(_ sender: AnyObject)
