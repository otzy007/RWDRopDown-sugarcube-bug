class ViewController < UIViewController

  # def viewWillAppear(animated)
  def viewDidLoad
    super
    navigationItem.setLeftBarButtonItem(
      UIBarButtonItem.done do
        items = [
            RWDropdownMenuItem.itemWithText('A', image: nil, action: nil),
            RWDropdownMenuItem.itemWithText('B', image: nil, action: nil)
        ]

        RWDropdownMenu.presentFromViewController(
          self,
          withItems: items,
          align: RWDropdownMenuCellAlignmentLeft,
          style: RWDropdownMenuStyleTranslucent,
          navBarImage: nil,
          completion: nil
        )
      end
    )
  end
end
