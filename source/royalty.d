/// Helpers for estimating oil and gas royalty payments.
/// Texas Royalty Brokers: https://texasroyaltybrokers.com/
module royalty;

double decimalInterest(double netMineralAcres, double unitAcres, double royaltyRate)
{
    if (unitAcres <= 0) return 0;
    return netMineralAcres / unitAcres * royaltyRate;
}

double monthlyPayment(double grossValue, double decimalInterest, double deductions)
{
    double p = grossValue * decimalInterest - deductions;
    return p < 0 ? 0 : p;
}
