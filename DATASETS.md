# MSR package: added course datasets

This release adds three datasets to the `MSR` R package.

## Loading the datasets

```r
library(MSR)

data(diffusion_data)
data(super_bock)
data(tivo_data)

?diffusion_data
?super_bock
?tivo_data
```

**Note the object names:** The file `super_bock_mini.RData` contains an object named `super_bock`, and `TiVo.RData` contains an object named `tivo_data`. Those internal names are used as package dataset names.

## 1. `diffusion_data`: Bass diffusion data

A data frame with **175 observations and 3 variables** containing adoption, download, or unit-sales data for estimating the Bass model.

| Product | Frequency | Metric | Observations |
|---|---|---|---:|
| Angry birds | Weekly | Downloads | 7 |
| Music app downloads | Monthly | Downloads | 30 |
| Caller tunes | Monthly | Adopters of the mobile service | 51 |
| iPad / tablets | Quarterly | Unit sales | 76 |
| Smartphones | Quarterly | Unit sales | 11 |

Columns:

- `product`: product or service name.
- `time`: successive time-period label, such as `week_1`, `month_1`, or `quarter_1`.
- `no_of_adoptions`: adoptions, downloads, or units sold in that period.

## 2. `super_bock`: conjoint analysis of beer preferences

A data frame with **936 observations and 8 variables**. Each row contains a respondent's rating for a beer product profile. The columns are `obs_id`, `ratings`, `respondent_id`, `profile_id`, `price`, `brand`, `capacity`, and `shape`.

The four beer attributes are factors with the following levels:

| Attribute | Levels |
|---|---|
| `price` | `30ct`, `50ct`, `60ct`, `70ct` |
| `brand` | `Cristal`, `Sagres`, `Super Bock` |
| `capacity` | `200ml`, `250ml`, `330ml` |
| `shape` | `Long Neck`, `Rocket`, `Spanish` |

This dataset is useful for rating-based conjoint analysis and estimating attribute partworths.

## 3. `tivo_data`: TiVo consumer survey

A data frame with **1,000 observations and 23 numeric variables** capturing respondents' demographics, buying behavior, TV viewing, and favorite TiVo features.

- **Gender:** female and male indicators.
- **Education:** none, BA, MA, and PhD indicators.
- **Demographics:** annual income (in thousands of US dollars) and age.
- **Purchasing decisions:** single vs. family decision-maker indicators.
- **Purchasing location:** discount, web/eBay, retail, mass-consumer electronics, and specialty stores.
- **Purchasing and viewing behavior:** monthly electronics spend, purchasing frequency in months, and daily hours of TV viewing.
- **Favorite features:** cool gadget, programming/interactive features, saving shows to watch as a family, schedule control, and time shifting.

Indicator variables use numeric 0/1 coding. Column names containing spaces and punctuation can be accessed with double brackets:

```r
head(tivo_data[["TV Viewing (hours/day)"]])
head(tivo_data[["Annual Income (x1000 $)"]])
```

For full variable descriptions, see `?tivo_data` in R.

**Provenance:** The source data were supplied for this course. The original collection sources were not provided, and the package does not assert more specific provenance.
