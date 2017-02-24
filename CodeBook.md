##Data Science Specialization - Getting and Cleaning Data course project
The purpose of this project is to demonstrate ability to collect, work with, and clean a data set. 
The goal is to prepare tidy data that can be used for later analysis.    
Author:  PLLSG    
Date: 23-Feb-2017


CODEBOOK
========
Following describes the final tidy data set resulting from the analysis


DATA SET OVERVIEW
-----------------
###Final tidy data set
Filename:    ./course_data/AvgMeasures_by_Subject+Activity.txt    
Class:       data.frame    
Dimensions:  180 rows, 68 columns    
Sorted by:   Subject (numerical order), Activity (alphabetical order)

The raw data was sourced from the Human Activity Recognition Using Smartphones Dataset. Based on experiments carried out by 30 volunteers (labelled as Subject), each person performed a set of 6 activities (Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing and Laying), wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, measurements in time and frequency domain variables were recorded, identified by the subject and the specific activity. 

Per the requirements of this course project, the given analysis process steps performed on the raw data sets (described in detail in README.md) resulted in this final tidy data set. It provides the average of all the mean and standard deviation measurements for each unique Subject and Activity.


DATA VARIABLES
--------------
###Explanation of variable names
Subject - unique identifier for each of the 30 volunteers    
Activity - depicts the activity done by the volunteer    
*t.., f..* - measurements derived from accelerometer and gyroscope 3-axial raw signals

###Components of measurement variable names
- time domain signals (prefix 't' to denote time)
- body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ)
- body linear acceleration and angular velocity derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ)
- magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag)
- Fast Fourier Transform (FFT) was applied to signals (prefix 'f' to denote frequency)
- '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions
- estimated signal values using '-mean()': Mean value or '-std()': Standard deviation


<table border="0">
<tr><td>    </td><td>DATA COLUMN                     </td><td>DATA TYPE</td></tr>
<tr><td>    </td><td>===========                     </td><td>=========</td></tr>
<tr><td>1   </td><td>Subject                         </td><td>Factor with 30 levels: 1, 2, 3, 4, .... 28, 29, 30</td></tr>
<tr><td>2   </td><td>Activity                        </td><td>Factor with 6 levels: LAYING, SITTING, STANDING, </td></tr>
<tr><td>    </td><td>                                </td><td>                      WALKING, WALKING_DOWNSTAIRS,</td></tr>
<tr><td>    </td><td>                                </td><td>                      WALKING_UPSTAIRS</td></tr>
<tr><td>3   </td><td>tBodyAcc-mean()-X               </td><td>numeric</td></tr>
<tr><td>4   </td><td>tBodyAcc-mean()-Y               </td><td>numeric</td></tr>
<tr><td>5   </td><td>tBodyAcc-mean()-Z               </td><td>numeric</td></tr>
<tr><td>6   </td><td>tBodyAcc-std()-X                </td><td>numeric</td></tr>
<tr><td>7   </td><td>tBodyAcc-std()-Y                </td><td>numeric</td></tr>
<tr><td>8   </td><td>tBodyAcc-std()-Z                </td><td>numeric</td></tr>
<tr><td>9   </td><td>tGravityAcc-mean()-X            </td><td>numeric</td></tr>
<tr><td>10  </td><td>tGravityAcc-mean()-Y            </td><td>numeric</td></tr>
<tr><td>11  </td><td>tGravityAcc-mean()-Z            </td><td>numeric</td></tr>
<tr><td>12  </td><td>tGravityAcc-std()-X             </td><td>numeric</td></tr>
<tr><td>13  </td><td>tGravityAcc-std()-Y             </td><td>numeric</td></tr>
<tr><td>14  </td><td>tGravityAcc-std()-Z             </td><td>numeric</td></tr>
<tr><td>15  </td><td>tBodyAccJerk-mean()-X           </td><td>numeric</td></tr>
<tr><td>16  </td><td>tBodyAccJerk-mean()-Y           </td><td>numeric</td></tr>
<tr><td>17  </td><td>tBodyAccJerk-mean()-Z           </td><td>numeric</td></tr>
<tr><td>18  </td><td>tBodyAccJerk-std()-X            </td><td>numeric</td></tr>
<tr><td>19  </td><td>tBodyAccJerk-std()-Y            </td><td>numeric</td></tr>
<tr><td>20  </td><td>tBodyAccJerk-std()-Z            </td><td>numeric</td></tr>
<tr><td>21  </td><td>tBodyGyro-mean()-X              </td><td>numeric</td></tr>
<tr><td>22  </td><td>tBodyGyro-mean()-Y              </td><td>numeric</td></tr>
<tr><td>23  </td><td>tBodyGyro-mean()-Z              </td><td>numeric</td></tr>
<tr><td>24  </td><td>tBodyGyro-std()-X               </td><td>numeric</td></tr>
<tr><td>25  </td><td>tBodyGyro-std()-Y               </td><td>numeric</td></tr>
<tr><td>26  </td><td>tBodyGyro-std()-Z               </td><td>numeric</td></tr>
<tr><td>27  </td><td>tBodyGyroJerk-mean()-X          </td><td>numeric</td></tr>
<tr><td>28  </td><td>tBodyGyroJerk-mean()-Y          </td><td>numeric</td></tr>
<tr><td>29  </td><td>tBodyGyroJerk-mean()-Z          </td><td>numeric</td></tr>
<tr><td>30  </td><td>tBodyGyroJerk-std()-X           </td><td>numeric</td></tr>
<tr><td>31  </td><td>tBodyGyroJerk-std()-Y           </td><td>numeric</td></tr>
<tr><td>32  </td><td>tBodyGyroJerk-std()-Z           </td><td>numeric</td></tr>
<tr><td>33  </td><td>tBodyAccMag-mean()              </td><td>numeric</td></tr>
<tr><td>34  </td><td>tBodyAccMag-std()               </td><td>numeric</td></tr>
<tr><td>35  </td><td>tGravityAccMag-mean()           </td><td>numeric</td></tr>
<tr><td>36  </td><td>tGravityAccMag-std()            </td><td>numeric</td></tr>
<tr><td>37  </td><td>tBodyAccJerkMag-mean()          </td><td>numeric</td></tr>
<tr><td>38  </td><td>tBodyAccJerkMag-std()           </td><td>numeric</td></tr>
<tr><td>39  </td><td>tBodyGyroMag-mean()             </td><td>numeric</td></tr>
<tr><td>40  </td><td>tBodyGyroMag-std()              </td><td>numeric</td></tr>
<tr><td>41  </td><td>tBodyGyroJerkMag-mean()         </td><td>numeric</td></tr>
<tr><td>42  </td><td>tBodyGyroJerkMag-std()          </td><td>numeric</td></tr>
<tr><td>43  </td><td>fBodyAcc-mean()-X               </td><td>numeric</td></tr>
<tr><td>44  </td><td>fBodyAcc-mean()-Y               </td><td>numeric</td></tr>
<tr><td>45  </td><td>fBodyAcc-mean()-Z               </td><td>numeric</td></tr>
<tr><td>46  </td><td>fBodyAcc-std()-X                </td><td>numeric</td></tr>
<tr><td>47  </td><td>fBodyAcc-std()-Y                </td><td>numeric</td></tr>
<tr><td>48  </td><td>fBodyAcc-std()-Z                </td><td>numeric</td></tr>
<tr><td>49  </td><td>fBodyAccJerk-mean()-X           </td><td>numeric</td></tr>
<tr><td>50  </td><td>fBodyAccJerk-mean()-Y           </td><td>numeric</td></tr>
<tr><td>51  </td><td>fBodyAccJerk-mean()-Z           </td><td>numeric</td></tr>
<tr><td>52  </td><td>fBodyAccJerk-std()-X            </td><td>numeric</td></tr>
<tr><td>53  </td><td>fBodyAccJerk-std()-Y            </td><td>numeric</td></tr>
<tr><td>54  </td><td>fBodyAccJerk-std()-Z            </td><td>numeric</td></tr>
<tr><td>55  </td><td>fBodyGyro-mean()-X              </td><td>numeric</td></tr>
<tr><td>56  </td><td>fBodyGyro-mean()-Y              </td><td>numeric</td></tr>
<tr><td>57  </td><td>fBodyGyro-mean()-Z              </td><td>numeric</td></tr>
<tr><td>58  </td><td>fBodyGyro-std()-X               </td><td>numeric</td></tr>
<tr><td>59  </td><td>fBodyGyro-std()-Y               </td><td>numeric</td></tr>
<tr><td>60  </td><td>fBodyGyro-std()-Z               </td><td>numeric</td></tr>
<tr><td>61  </td><td>fBodyAccMag-mean()              </td><td>numeric</td></tr>
<tr><td>62  </td><td>fBodyAccMag-std()               </td><td>numeric</td></tr>
<tr><td>63  </td><td>fBodyBodyAccJerkMag-mean()      </td><td>numeric</td></tr>
<tr><td>64  </td><td>fBodyBodyAccJerkMag-std()       </td><td>numeric</td></tr>
<tr><td>65  </td><td>fBodyBodyGyroMag-mean()         </td><td>numeric</td></tr>
<tr><td>66  </td><td>fBodyBodyGyroMag-std()          </td><td>numeric</td></tr>
<tr><td>67  </td><td>fBodyBodyGyroJerkMag-mean()     </td><td>numeric</td></tr>
<tr><td>68  </td><td>fBodyBodyGyroJerkMag-std()      </td><td>numeric</td></tr>
</table>