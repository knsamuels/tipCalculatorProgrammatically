//
//  TipViewController.swift
//  calculator
//
//  Created by Kristin Samuels  on 7/6/20.
//  Copyright © 2020 Kristin Samuels . All rights reserved.
//

import UIKit

class TipViewController: UIViewController {
    
    // Mark- Properties
    var safeArea: UILayoutGuide {
        return view.safeAreaLayoutGuide
    }
    
    //Mark: LifeCycle methods
    override func loadView() {
        super.loadView()
        addAllSubViews()
        setupTipStackView()
        setupBillStackView()
        setupTipButtonStackView()
        setupTipAmountStackView()
        setupTotalStackView()
        setupTipCalculatorStackView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        constrainAppTitleLabel()
        constraintTipCalculatorStackView()
        activateFifteenButton()
        activateEighteenButton()
        activateTwentyButton()
        
    }
    
    // Mark- Views methods
    func setupBillStackView() {
        billStackView.addArrangedSubview(billLabel)
        billStackView.addArrangedSubview(billTextField)
    }
    func setupTipButtonStackView() {
        tipButtonStackView.addArrangedSubview(fifteenButton)
        tipButtonStackView.addArrangedSubview(eighteenButton)
        tipButtonStackView.addArrangedSubview(twentyButton)
    }
    
    func setupTipStackView() {
        tipStackView.addArrangedSubview(tipLabel)
        tipStackView.addArrangedSubview(tipButtonStackView)
    }
    
    func setupTipAmountStackView() {
        tipAmountStackView.addArrangedSubview(tipAmountLabel)
        tipAmountStackView.addArrangedSubview(tipAmountSumLabel)
    }
    
    func setupTotalStackView() {
        totalStackView.addArrangedSubview(totalLabel)
        totalStackView.addArrangedSubview(totalSumLabel)
    }
    
    func setupTipCalculatorStackView() {
        tipCalculatorStackView.addArrangedSubview(billStackView)
        tipCalculatorStackView.addArrangedSubview(tipStackView)
        tipCalculatorStackView.addArrangedSubview(tipAmountStackView)
        tipCalculatorStackView.addArrangedSubview(totalStackView)
    }
    
    // Mark: Views
    var appTitleLabel: AppNameLabel = {
        let label = AppNameLabel()
        label.text = "tipping buddy"
        return label
    }()
    
    var billLabel: TipLabel = {
        let label = TipLabel()
        label.text = "Bill"
        return label
    }()
    
    var tipLabel: TipLabel = {
        let label = TipLabel()
        label.text = "Tip"
        return label
    }()
    
    var tipAmountLabel: TipLabel = {
        let label = TipLabel()
        label.text = "Tip amount"
        return label
    }()
    
    var totalLabel: TipLabel = {
        let label = TipLabel()
        label.text = "Total"
        return label
    }()
    
    var fifteenButton: TipButton = {
        let button = TipButton()
        button.setTitle("15 %", for: .normal)
        button.contentHorizontalAlignment = .center
        return button
    }()
    
    var eighteenButton: TipButton = {
        let button = TipButton()
        button.setTitle("18 %", for: .normal)
        button.contentHorizontalAlignment = .center
        return button
    }()
    var twentyButton: TipButton = {
        let button = TipButton()
        button.setTitle("20 %", for: .normal)
        button.contentHorizontalAlignment = .center
        return button
    }()
    
    var tipAmountSumLabel: TipLabel = {
        let label = TipLabel()
        label.text = "0.00"
        return label
    }()
    
    var totalSumLabel: TipLabel = {
        let label = TipLabel()
        label.text = "0.00"
        return label
    }()
    
    var billTextField: TipTextField = {
        let textField = TipTextField()
        
        return textField
    }()
    
    let billStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let tipStackView: UIStackView = {
           let stackView = UIStackView()
           stackView.axis = .horizontal
           stackView.alignment = .fill
           stackView.distribution = .fillEqually
           stackView.translatesAutoresizingMaskIntoConstraints = false
           return stackView
       }()
    
    var tipButtonStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.spacing = 20
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    var tipAmountStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    var totalStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    var tipCalculatorStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.spacing = 56
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    func constrainAppTitleLabel() {
        appTitleLabel.anchor(top: safeArea.topAnchor, bottom: nil, leading: safeArea.leadingAnchor, trailing: nil, paddingTop: 50, paddingBottom: 0, paddingLeading: 120, paddingTrailing: 0)
    }
    
    func constraintTipCalculatorStackView() {
        tipCalculatorStackView.anchor(top: appTitleLabel.bottomAnchor, bottom: safeArea.bottomAnchor, leading: safeArea.leadingAnchor, trailing: safeArea.trailingAnchor, paddingTop: 50, paddingBottom: -150, paddingLeading: 50, paddingTrailing: -50)
    }
    func addAllSubViews() {
        view.addSubview(appTitleLabel)
        view.addSubview(tipCalculatorStackView)
    }
    
    // Mark: Helper Methods
    func setupViews() {
        self.view.backgroundColor = .backgroundColor
        updateButtonViews(button: fifteenButton)
        updateButtonViews(button: eighteenButton)
        updateButtonViews(button: twentyButton)
        updateLabelViews(label: billLabel)
        updateLabelViews(label: tipLabel)
        updateLabelViews(label: tipAmountLabel)
        updateLabelViews(label: totalLabel)
        updateLabelViews(label: tipAmountLabel)
        updateLabelViews(label: totalSumLabel)
        updateTextFieldViews(textField: billTextField)
        updateTitleLabelView(label: appTitleLabel )
    }
    
    func updateButtonViews(button:TipButton) {
            button.setTitleColor(.textColor, for: .normal)
            button.backgroundColor = .buttonPink
            button.addCornerRadius()
            guard let size = button.titleLabel?.font.pointSize else {return}
        button.titleLabel?.font = UIFont(name: FontNames.latoBold, size: size)
        }
    
    func updateLabelViews(label:TipLabel) {
        let size = label.font.pointSize
        label.font = UIFont(name: FontNames.latoRegular, size:  size)
        label.textColor = .textColor
    }
    
    func updateTextFieldViews(textField: TipTextField) {
        textField.addCornerRadius()
        textField.addAccentBorder()
        textField.backgroundColor = .backgroundColor
        textField.textColor = .textColor
        textField.layer.masksToBounds = true
//        textField.setupPlaceHolderText()
//        textField.attributedPlaceholder = NSAttributedString(string: "enter bill amount here", attributes: [NSAttributedString.Key.foregroundColor: UIColor.buttonPink, NSAttributedString.Key.font: UIFont(name: FontNames.latoRegular, size: 16)!])
    }
    
    func updateTitleLabelView(label:TipLabel) {
        label.updateFontTo(font: FontNames.latoBold)
        label.textColor = .titlePink
        label.font = UIFont.systemFont(ofSize: 30)
    }
    
    func tipCalculator(percentage: Double) {
        
        guard let input: Double = Double(billTextField.text!) else { return }
        
        let tipSum = input * percentage
        let doubleFormat = ".2"
        let totalSum = tipSum + input
        
        let tipAmount = tipSum.format(f: doubleFormat)
        let totalAmount = totalSum.format(f: doubleFormat)
        
        tipAmountSumLabel.text = "$ " + tipAmount
        totalSumLabel.text = "$ " + totalAmount
        
    }
    
// Mark- Actions

    func activateFifteenButton() {
        fifteenButton.addTarget(self, action: #selector(selectFifteenButton(sender:)), for: .touchUpInside)
    }
    
    func activateEighteenButton() {
        eighteenButton.addTarget(self, action: #selector(selectEighteenButton(sender:)), for: .touchUpInside)
    }
    
    func activateTwentyButton() {
        twentyButton.addTarget(self, action: #selector(selectTwentyButton(sender:)), for: .touchUpInside)
    }
    
    @objc func selectFifteenButton(sender: UIButton) {
           tipCalculator(percentage: 0.15)
       }
    @objc func selectEighteenButton(sender: UIButton) {
        tipCalculator(percentage: 0.18)
    }
    
    @objc func selectTwentyButton(sender: UIButton) {
        tipCalculator(percentage: 0.20)
    }
    
}
