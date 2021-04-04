# Beauty in the Classroom

UT Austin, like essentially every other major university in the country, asks students
to evaluate the quality of instruction they have received from
their professors. In your career at UT, you will almost certainly have
participated in this process by rating your professors on a scale of 1 (very
unsatisfactory) to 5 (excellent) on the end-of-semester course instructor survey. 
These ratings are significant part of what
administrators use to evaluate faculty performance, set salaries, make 
promotion decisions, and confer teaching awards. You therefore have a
non-trivial say in the future direction of the university!

The file “profs.csv” (available [here](../data/profs.csv)) 
contains data on course-instructor surveys
from a sample of 463 courses at the University of Texas from 2000 - 2002. You are also given information about the individual courses and
professors -- including, most controversially, a rating of each professor’s
physical attractiveness as judged by students. The data represent
evaluations from 25,547 students and most major academic departments. 

(Data originally from “Beauty in the classroom: instructors’ pulchritude and putative pedagogical productivity.” Daniel S. Hamermesh and Amy M. Parker. Economics of Education Review, August 2005, v. 24 (4) pp. 369–76.)

The variables included are:

- minority: is the professor from a non-Caucasian ethnic minority?
- age: the professor’s age.
- gender: a factor indicating the professor’s gender.
- credits: a factor indicating whether the course is a single-credit elective (e.g. scuba diving or ballroom dancing, coded “single”) or an academic course (coded “more”).
- beauty: a rating of the professor’s physical attractiveness, as judged by a panel of six students. (The score was averaged across all six panelists, and shifted to have a mean of
zero)
- eval: the professor’s average teaching evaluation for courses in the
sample, on a scale of 1 to 5. 
- division: whether the course is an upper or lower division course.
- native: whether the professor is a native English speaker.
- tenure: whether the professor is tenured/tenure-track, or not.
- students: the number of students that participated in the evaluation.
- allstudents: the number of students enrolled in the course.
- prof: a unique numerical identifier for the professor being rated.

The primary question for you to assess is: Does it seem that teachers who are perceived as more attractive receive higher course instructor evaluations, other relevant factors being equal? 

1. Start by examining the association between the evaluations and the beauty score graphically, and with a simple linear regression model. What do you see?
2. Thinking about the variables above, which of these might be important *confounders* of the relationship between beauty and course evaluations? (Remember: We should be **most** concerned about adjusting for variables that are likely to be associated both with the perception of beauty and students' course evaluations.)
3. Using bivariate plots (scatterplots, boxplots, etc) and tables, do some exploratory data analysis to identify potential confounders and predictors of course evaluations.
4. Estimate the relationship between evaluations and the beauty score adjusting for an appropriate set of counfounders. Use your judgement from part 2 as well as your findings from part 3 to inform your choices here.  Does there still appear to be a relationship between beauty and course evaluations? 
5. Examining the model from part 4, are there any variables you'd like to drop? Any you think you should add? (Remember that variables that are uncorrelated with the beauty score can still be important to include in the model if they are predictive of course evaluations, since they will reduce the residual standard deviation and yield smaller standard errors for the beuaty score regression coefficient.) Justify your decisions. You should consider more than one model here. How does your estimate of the relationship between beauty and course evaluations change as you adjust the set of control variables in the model?
6. Picking one of the models from part 5, interpret the estimated coefficient on the gender variable (if gender isn't in your set of control variables, add it). Compare the estimated coefficient from this model to the estimated coefficient obtained from a simple linear regression of course evaluations on gender. How do we interpret the coefficients in the simple linear regression model?
