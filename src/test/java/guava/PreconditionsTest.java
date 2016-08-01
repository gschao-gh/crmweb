package guava;

import com.google.common.base.Preconditions;

/**
 * Created by Administrator on 2016/7/29.
 */
public class PreconditionsTest {

	public static void main(String[] args) {
		PreconditionsTest preconditionsTest = new PreconditionsTest();
		try{
			System.out.println(preconditionsTest.sprt(3.0));
		}catch (Exception e){
			System.out.println(e.toString());
		}

		try {
			System.out.println(preconditionsTest.sum(null,3));
		}catch(NullPointerException e){
			System.out.println(e.getMessage());
		}
		try {
			System.out.println(preconditionsTest.getValue(6));
		}catch(IndexOutOfBoundsException e){
			System.out.println(e.getMessage());
		}
	}


	public double sprt(double input){
		Preconditions.checkArgument(input >0.0,"Illegal Argument passed: Negative value %s.",input);
		return Math.sqrt(input);
	}

	public int sum(Integer a, Integer b){
		a = Preconditions.checkNotNull(a,
				"Illegal Argument passed: First parameter is Null.");
		b = Preconditions.checkNotNull(b,
				"Illegal Argument passed: Second parameter is Null.");
		return a+b;
	}

	public int getValue(int input){
		int[] data = {1,2,3,4,5};
		Preconditions.checkElementIndex(input,data.length,
				"Illegal Argument passed: Invalid index.");
		return 0;
	}


}
