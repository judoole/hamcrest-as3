package org.hamcrest.object {

    import org.hamcrest.*;
    import org.hamcrest.core.not;

    public class IsInstanceOfTest extends AbstractMatcherTestCase {

        public function testEvaluatesToTrueIfArgumentIsInstanceOfASpecificClass():void {

            assertThat(1, instanceOf(Number));
            assertThat(1.0, instanceOf(Number));

            assertThat(null, not(instanceOf(Number)));
            assertThat("hello", not(instanceOf(Number)));
        }

        public function testHasAReadableDescription():void {
            assertDescription("an instance of Number", instanceOf(Number));
        }
    }
}