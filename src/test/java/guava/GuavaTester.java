package guava;

import com.google.common.base.Optional;

/**
 * Created by Administrator on 2016/7/29.
 */
public class GuavaTester {
	public static void main(String[] args) {

		GuavaTester guavaTester = new GuavaTester();

		Integer val1 = null;
		Integer val2 = new Integer(10);
		Optional<Integer> a = Optional.fromNullable(val1);
		Optional<Integer> b = Optional.of(val2);
		System.out.println(guavaTester.sum(a,b));
	}

	public Integer sum(Optional<Integer> a, Optional<Integer> b){
		System.out.println("val1 is present:"+a.isPresent());
		System.out.println("val2 is present:"+b.isPresent());

		Integer value1 = a.or(new Integer(2));
		Integer value2 = b.or(new Integer(3));


		return value1+value2;
	}
}
