;;; Compiled snippets and support files for `swift-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'swift-mode
		     '(("while" "while $1 {\n      $0\n}" "while" nil nil nil "/home/lvway/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/swift-mode/while" nil nil)
		       ("var" "var $1: $2 = $0" "var" nil nil nil "/home/lvway/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/swift-mode/var" nil nil)
		       ("uiViewControllerLifecycle" "// MARK: UIViewController lifecycle\n\noverride func viewDidLoad() {\n    super.viewDidLoad()\n}\n\noverride func viewWillAppear(_ animated: Bool) {\n    super.viewWillAppear(animated)\n}\n\noverride func viewDidAppear(_ animated: Bool) {\n    super.viewDidAppear(animated)\n}\n\noverride func viewWillDisappear(_ animated: Bool) {\n    super.viewWillDisappear(animated)\n}\n\noverride func viewDidDisappear(_ animated: Bool) {\n    super.viewDidDisappear(animated)\n}" "uiViewControllerLifecycle" nil nil nil "/home/lvway/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/swift-mode/uiviewcontrollerlifecycle" nil nil)
		       ("uitableViewDelegate" "// MARK: UITableViewDelegate\n\nfunc tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {\n\n}\n\nfunc tableView(_ tableView: UITableView,\n  heightForRowAt indexPath: IndexPath) -> CGFloat {\n\n}\n\nfunc tableView(_ tableView: UITableView,\n    heightForHeaderInSection section: Int) -> CGFloat {\n\n}\n\nfunc tableView(_ tableView: UITableView,\n    heightForFooterInSection section: Int) -> CGFloat {\n\n}\n\nfunc tableView(_ tableView: UITableView,\n    viewForHeaderInSection section: Int) -> UIView? {\n\n}\n\nfunc tableView(_ tableView: UITableView,\n    viewForFooterInSection section: Int) -> UIView? {\n\n}" "uiTableViewDelegate" nil nil nil "/home/lvway/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/swift-mode/uitableviewdelegate" nil nil)
		       ("uitableViewDataSource" "// MARK: UITableViewDataSource\n\nfunc numberOfSections(in tableView: UITableView) -> Int {\n    return $1\n}\n\nfunc tableView(_ tableView: UITableView,\n    numberOfRowsInSection section: Int) -> Int {\n    return $2\n}\n\nfunc tableView(_ tableView: UITableView,\n    cellForRowAt indexPath: IndexPath) -> UITableViewCell {\n    let cell = tableView.dequeueReusableCell(withIdentifier: $3,\n                                                        for: indexPath)\n    configureCell(cell: cell, forRowAt: indexPath)\n    return cell\n}\n\nfunc configureCell(cell: UITableViewCell, forRowAt indexPath: IndexPath) {\n\n}" "uitableViewDataSource" nil nil nil "/home/lvway/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/swift-mode/uitableviewdatasource" nil nil)
		       ("uiCollectionViewDelegate" "// MARK: UICollectionViewDelegate\n\nfunc collectionView(_ collectionView: UICollectionView,\n           didSelectItemAt indexPath: IndexPath) {\n\n}\n\nfunc collectionView(_ collectionView: UICollectionView,\n         didDeselectItemAt indexPath: IndexPath) {\n\n}" "uiCollectionViewDelegate" nil nil nil "/home/lvway/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/swift-mode/uicollectionviewdelegate" nil nil)
		       ("uicollectionViewDataSource" "// MARK: UICollectionViewDataSource\n\nfunc numberOfSections(in collectionView: UICollectionView) -> Int {\n    return $1\n}\n\nfunc collectionView(_ collectionView: UICollectionView,\n      numberOfItemsInSection section: Int) -> Int {\n    // TODO:- Required Method\n    return $2\n}\n\nfunc collectionView(_ collectionView: UICollectionView,\n             cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {\n    let cell =\n        collectionView.dequeueReusableCell(withReuseIdentifier: $3, for: indexPath)\n    configureCell(cell: cell, forItemAt: indexPath)\n    // TODO:- Required Method\n    return cell\n}\n\nfunc configureCell(cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {\n\n}\n\nfunc collectionView(_ collectionView: UICollectionView,\n    viewForSupplementaryElementOfKind kind: String,\n                              at indexPath: IndexPath) -> UICollectionReusableView {\n    let view = collectionView.dequeueReusableSupplementaryView(\n                   ofKind: UICollectionElementKindSectionHeader,\n                   withReuseIdentifier: $3, for: indexPath) as UIView\n    return view\n}" "uicollectionViewDataSource" nil nil nil "/home/lvway/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/swift-mode/uicollectionviewdatasource" nil nil)
		       ("uialertController" "let alert =\n    UIAlertController(title: $1,\n                    message: $2,\n             preferredStyle: .alert)\n	alert.addAction(UIAlertAction(title: \"\",\n                                  style: .default,\n                                handler: { (action) in\n	alert.dismiss(animated: true, completion: {\n        $0\n    })\n}))\n\nself.presentViewController(alert, animated: true, completion: nil)" "uialertController" nil nil nil "/home/lvway/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/swift-mode/uialertcontroller" nil nil)
		       ("trycatch" "do {\n    try $1\n} catch $2 {\n    $3\n} catch $4 {\n    $5\n}" "trycatch" nil nil nil "/home/lvway/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/swift-mode/trycatch" nil nil)
		       ("sortarrayofstrings" "$1.sorted { (a, b) -> Bool in\n    let comparisonResult = a.compare(b,\n                                     options: [],\n                                     range: a.range(of: a),\n                                     locale: Locale.current)\n    return comparisonResult == .orderedSame\n}" "sortarrayofstrings" nil nil nil "/home/lvway/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/swift-mode/sortarrayofstrings" nil nil)
		       ("prop-getset" "var $1: $2 {\n    get {$3}\n    set {$3 = value }\n}" "prop-getset" nil nil nil "/home/lvway/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/swift-mode/prop" nil nil)
		       ("mark" "// MARK: - $1" "mark" nil nil nil "/home/lvway/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/swift-mode/mark" nil nil)
		       ("let" "let $1: $2 = $0" "let" nil nil nil "/home/lvway/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/swift-mode/let" nil nil)
		       ("initcoder" "public required init?(coder aDecoder: NSCoder) {\n  fatalError(\"init(coder:) has not been implemented\")\n}" "initcoder" nil nil nil "/home/lvway/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/swift-mode/initcoder" nil nil)
		       ("if" "if $1 {\n    $0\n}" "if (...) { ... }" nil nil nil "/home/lvway/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/swift-mode/if" nil nil)
		       ("func" "func $1() -> $2 {\n    $0\n}" "func" nil nil nil "/home/lvway/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/swift-mode/func" nil nil)
		       ("fori" "for $1 in $2 {\n    $0\n}" "fori" nil nil nil "/home/lvway/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/swift-mode/fori" nil nil)
		       ("forcase" "for case let $1 in $2 as $3 {\n    $0\n}" "forcase" nil nil nil "/home/lvway/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/swift-mode/forcase" nil nil)
		       ("documentDirectory" "if let path =\n    NSSearchPathForDirectoriesInDomains(\n        FileManager.SearchPathDirectory.documentDirectory,\n        FileManager.SearchPathDomainMask.userDomainMask, true).first {\n    let documentsDirectoryURL = NSURL.fileURL(withPath: path)\n}" "documentDirectory" nil nil nil "/home/lvway/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/swift-mode/documentdirectory" nil nil)
		       ("dispatchMain" "DispatchQueue.main.async(execute: { () -> Void in\n    $0\n})" "dispatchMain" nil nil nil "/home/lvway/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/swift-mode/dispatchmain" nil nil)
		       ("dispatchAsync" "DispatchQueue.global(qos: .default).async {\n    $1\n    DispatchQueue.main.async {\n        $0\n    }\n}" "dispatchAsync" nil nil nil "/home/lvway/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/swift-mode/dispatchasync" nil nil)
		       ("dispatchAfter" "DispatchQueue.main.asyncAfter(deadline: .now() + .seconds($1)) {\n    $0\n}" "dispatchAfter" nil nil nil "/home/lvway/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/swift-mode/dispatchafter" nil nil)
		       ("checkversion" "#if swift(>=3.0)\n    $0\n#elseif swift(>=2.2)\n    $2\n#elseif swift(>=2.1)\n    $2\n#endif" "checkversion" nil nil nil "/home/lvway/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/swift-mode/checkversion" nil nil)
		       ("available" "@available(iOS $1, *)" "available" nil nil nil "/home/lvway/.emacs.d/elpa/yasnippet-snippets-20180616.1005/snippets/swift-mode/available" nil nil)))


;;; Do not edit! File generated at Wed Jun 20 12:55:23 2018
