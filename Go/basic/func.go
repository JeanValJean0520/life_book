// import는 기본 패키지가 아닌 외부에 있는 다른 패키지를 포함 시키기 위해 필요하다.
import (
	"fmt"
	"reflect"
)

// 매인 함수
func main() {
	// fmt 라는 외부 패키지의 기능을 갖고와서 사용
	fmt.Println("Hello world")

	message := []byte{'H', 'J'}
	var message_a [3]int = [3]int{1, 2, 3}

	fmt.Println(string(message))
	fmt.Println(message_a)

	var stringA string
	stringA = "Hello DW"
	fmt.Println(reflect.TypeOf(stringA))

	stringB := "StringB"
	fmt.Println(reflect.TypeOf(stringB))
}