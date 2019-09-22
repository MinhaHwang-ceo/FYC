/*
 * package com.kh.yc.admin.controller;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.ui.Model; import
 * org.springframework.web.bind.annotation.GetMapping; import
 * org.springframework.web.bind.annotation.RequestMapping;
 * 
 * import com.kh.yc.reward.model.vo.ExcelReward;
 * 
 * import java.math.BigDecimal; import java.math.RoundingMode; import
 * java.time.Instant; import java.time.LocalDate; import java.time.ZoneId;
 * import java.util.ArrayList; import java.util.Currency; import java.util.Date;
 * import java.util.List;
 * 
 * @Controller
 * 
 * @RequestMapping("/") public class CurrencyRateController {
 * 
 * @Autowired ExcelReward er;
 * 
 * @GetMapping("/") public String mainView() { return "main"; }
 * 
 * @GetMapping("/exchangeRates") public String handleForexRequest(Model model) {
 * model.addAttribute("todayCurrencyRates", getTodayForexRates()); return
 * "forexView"; }
 * 
 * private List<ExcelReward> getTodayForexRates() { //dummy rates
 * List<ExcelReward> currencyRates = new ArrayList<>(); Date today = new Date();
 * List<Currency> currencies = new
 * ArrayList<>(Currency.getAvailableCurrencies());
 * 
 * for (int i = 0; i < currencies.size(); i += 2) { String currencyPair =
 * currencies.get(i) + "/" + currencies.get(i + 1); ExcelReward cr = new
 * ExcelReward(); cr.setCurrencyPair(currencyPair); cr.setDate(today);
 * BigDecimal bidPrice = new BigDecimal(Math.random() * 5 + 1); bidPrice =
 * bidPrice.setScale(3, RoundingMode.CEILING); cr.setBidPrice(bidPrice);
 * BigDecimal askPrice = new BigDecimal(bidPrice.doubleValue() + Math.random() *
 * 2 + 0.5); askPrice = askPrice.setScale(3, RoundingMode.CEILING);
 * cr.setAskPrice(askPrice);
 * 
 * currencyRates.add(cr); } return currencyRates; } }
 */