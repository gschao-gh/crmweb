package guava;

import com.google.common.base.Optional;

/**
 * Created by Administrator on 2016/7/29.
 */
public class GuavaTest {
	public static void main(String[] args) {

		GuavaTest guavaTest = new GuavaTest();

		Integer invalidInput = null;
		Optional<Integer> a = Optional.of(invalidInput);
		Optional<Integer> b = Optional.of(new Integer(10));
		System.out.println(guavaTest.sum(a,b));
	}

	public Integer sum(Optional<Integer> a, Optional<Integer> b){
		return a.get()+b.get();
	}
}
