FILES="contents/prerequisite/linear_algebra.md contents/prerequisite/calculus.md contents/prerequisite/probability.md contents/linear_regression/linear_regression.md"
pandoc --toc --css styles.css --metadata title="Foundation of Data Science" -s $FILES -o /builds/yaonotes/ml-book/build/html/report.html
pandoc --toc --pdf-engine=xelatex -s $FILES -o /builds/yaonotes/ml-book/build/html/report.pdf
mv styles.css /builds/yaonotes/ml-book/build/html/styles.css