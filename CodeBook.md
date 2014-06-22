<br /> <br />

-   Two datasets are produced by the R program *“run\_analysis.R”*:
    *“dataset\_1.csv”* and *“dataset\_2.csv”*. <br />

-   The raw datasets that are used are downloaded from:
    <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>
    <br />

-   The description, how they are connected and how to place them to be
    readable by the R-program is described in *“READ ME.md”*. <br />
    <br />

### “dataset\_1.csv”

#### Dataset:

*“dataset\_1.csv”* has 10299 observations (rows) and 1234 variables
(columns) *[class: data.frame]*. <br /> <br />

#### Variable 1:

**Label:** *“Group"*

**Class:** *factor*

**Values:** *“test”, “train”*

**Description:** Gives the name of the trial groups. <br /> <br />

#### Variable 2:

**Label:** *“Subject”*

**Class:** *integer*

**Values:** *“1, 2, 3, …, 30”*

**Description:** Gives the index of the participating individuals.
<br /> <br />

#### Variable 3:

**Label:** *"Activity"*

**Class:** *character*

**Values:** *"STANDING”, "SITTING”, "LAYING”, "WALKIN”,
“WALKING\_DOWNSTAIRS”, "WALKING\_UPSTAIRS”*

**Description:** Describes the respective activity the test person was
performing. <br /> <br />

#### Variables 4 - 82:

**Labels:** *"t\_Body\_Acc\_mean\_X”, “"t\_Body\_Acc\_mean\_X”,
"t\_Body\_Acc\_mean\_Y”, …, "f\_Body\_Gyro\_Jerk\_Mag\_meanFreq”*

**Class:** *numeric*

**Values:** Example: -6.986750e-04, 6 digits after comma, including
negative numbers

**Description:** Accelerometer and gyroscope 3-axial raw signals. <br />

-   **t:** denotes time of measurement taken at a rate 50 Hz.

-   **Body\_Acc, Gravity\_Acc:** Body and gravity acceleration signals
    (t\_Body\_Acc-XYZ and t\_Gravity\_Acc-XYZ).

-   **Body\_Acc\_Jerk, Body\_Gyro\_Jerk:** Body linear acceleration and
    angular velocity derived in time to obtain Jerk signals
    (t\_Body\_Acc\_Jerk-XYZ and t\_Body\_Gyro\_Jerk-XYZ).

-   **Body\_Acc\_Mag, Gravity\_Acc\_Mag, Body\_Acc\_Jerk\_Mag,
    Body\_Gyro\_Mag, Body\_Gyro\_Jerk\_Mag:** The magnitude
    three-dimensional signals calculated using the Euclidean norm
    (t\_Body\_Acc\_Mag, t\_Gravity\_Acc\_Mag, t\_Body\_Acc\_Jerk\_Mag,
    t\_Body\_Gyro\_Mag, t\_Body\_Gyro\_Jerk\_Mag).

-   **f:** f to indicate frequency domain signalsFast Fourier Transform
    (FFT) applied to some of these signals producing f\_Body\_Acc-XYZ,
    f\_Body\_Acc\_Jerk-XYZ, f\_Body\_Gyro-XYZ, f\_Body\_Acc\_Jerk\_Mag,
    f\_Body\_Gyro\_Mag, f\_Body\_Gyro\_Jerk\_Mag.

-   **X, Y, Z:** ‘XYZ' is used to denote 3-axial signals in the X, Y and
    Z directions to estimate variables of the feature vector for each
    pattern. <br /> <br />

A set of variables that estimated the mean and the standard deviation
from these signals are:

-   **mean:** Mean value
-   **std:** Standard deviation
-   **meanFreq:** Weighted average of the frequency components to obtain
    a mean frequency <br /> <br />

#### Variables 83 - 1234:

**Labels:** *"body\_acc\_x\_1”, ”body\_acc\_x\_2”, …,
"total\_acc\_z\_128"*

**Class:** *numeric*

**Values:** Example: *1.808515e-04*, 6 digits after comma, including
negative numbers

**Description:** Accelerometer and gyroscope 3-axial raw inertial
signals. <br />

-   *"body\_acc\_x\_1”, …, "body\_acc\_y\_128”:* 128 measurements of
    acceleration measures of the body on the x-axis

-   *“body\_acc\_y\_1”, …, “body\_acc\_y\_128”:* 128 measurements of
    acceleration measures of the body on the y-axis

-   *“body\_acc\_z\_1”, …, “body\_acc\_z\_128”:* 128 measurements of
    acceleration measures of the body on the z-axis

-   *“body\_gyro\_x\_1”, …, “body\_gyro\_x\_128”:* 128 measurements of
    gyrometric measures of the body on the x-axis

-   *“body\_gyro\_y\_1”, …, “body\_gyro\_y\_128”:* 128 measurements of
    gyrometric measures of the body on the y-axis

-   *“body\_gyro\_z\_1”, …, “body\_gyro\_z\_128”:* 128 measurements of
    gyrometric measures of the body on the z-axis

-   *“total\_acc\_x\_1”, …, “total\_acc\_x\_128”:* 128 measurements of
    total acceleration measures of the body on the x-axis

-   *“total\_acc\_y\_1”, …, “total\_acc\_y\_128”:* 128 measurements of
    total acceleration measures of the body on the y-axis

-   *“total\_acc\_z\_1”, …, “total\_acc\_z\_128”:* 128 measurements of
    total acceleration measures of the body on the z-axis <br /> <br />
    <br />

* * * * *

### “dataset\_2.csv”

#### Dataset:

*“dataset\_2.csv”* has 180 observations (rows) and 82 variables
(columns) *[class: data.frame]*. Data from "Inertias Signal" datasets
were omitted. <br /> <br />

#### Variable 1:

**Label:** *“Group"*

**Class:** *factor*

**Values:** *“test”, “train”*

**Description:** Gives the name of the trial groups. <br /> <br />

#### Variable 2:

**Label:** *“Subject”*

**Class:** *integer*

**Values:** *“1, 2, 3, …, 30”*

**Description:** Gives the index of the participating individuals.
<br /> <br />

#### Variable 3:

**Label:** *"Activity"*

**Class:** *character*

**Values:** *"STANDING”, "SITTING”, "LAYING”, "WALKIN”,
“WALKING\_DOWNSTAIRS”, "WALKING\_UPSTAIRS”*

**Description:** Describes the respective activity the test person was
performing. <br /> <br />

#### Variables 4 - 82:

**Labels:** *t\_Body\_Acc\_mean\_X\_MEAN”,
“"t\_Body\_Acc\_mean\_X\_MEAN”, …,
"f\_Body\_Gyro\_Jerk\_Mag\_meanFreq\_MEAN”*

**Class:** *numeric*

**Values:** Example: *0.2215982*, 6 digits after comma, including
negative numbers

**Description:** The average of each variable for each activity and each
subject was calculated for every accelerometer and gyroscope 3-axial raw
signal. <br />

-   **t:** denotes time of measurement taken at a rate 50 Hz.

-   **Body\_Acc, Gravity\_Acc:** Body and gravity acceleration signals
    (t\_Body\_Acc-XYZ and t\_Gravity\_Acc-XYZ).

-   **Body\_Acc\_Jerk, Body\_Gyro\_Jerk:** Body linear acceleration and
    angular velocity derived in time to obtain Jerk signals
    (t\_Body\_Acc\_Jerk-XYZ and t\_Body\_Gyro\_Jerk-XYZ).

-   **Body\_Acc\_Mag, Gravity\_Acc\_Mag, Body\_Acc\_Jerk\_Mag,
    Body\_Gyro\_Mag, Body\_Gyro\_Jerk\_Mag:** The magnitude
    three-dimensional signals calculated using the Euclidean norm
    (t\_Body\_Acc\_Mag, t\_Gravity\_Acc\_Mag, t\_Body\_Acc\_Jerk\_Mag,
    t\_Body\_Gyro\_Mag, t\_Body\_Gyro\_Jerk\_Mag).

-   **f:** f to indicate frequency domain signalsFast Fourier Transform
    (FFT) applied to some of these signals producing f\_Body\_Acc-XYZ,
    f\_Body\_Acc\_Jerk-XYZ, f\_Body\_Gyro-XYZ, f\_Body\_Acc\_Jerk\_Mag,
    f\_Body\_Gyro\_Mag, f\_Body\_Gyro\_Jerk\_Mag. (Note the ').

-   **X, Y, Z:** ‘XYZ' is used to denote 3-axial signals in the X, Y and
    Z directions to estimate variables of the feature vector for each
    pattern. <br /> <br />

A set of variables that estimated the mean and the standard deviation
from these signals are:

-   **mean:** Mean value
-   **std:** Standard deviation
-   **meanFreq:** Weighted average of the frequency components to obtain
    a mean frequency
