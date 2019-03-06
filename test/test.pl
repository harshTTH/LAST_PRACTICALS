index(Matrix, Row, Col, Value):-
	nth1(Row, Matrix, MatrixRow),
	nth1(Col, MatrixRow, Value).
