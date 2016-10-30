package main
 
import(
	"fmt"
	"net/http"
	"runtime"
	"os"
)
 
func indexHandler( w http.ResponseWriter, r *http.Request){
	fmt.Fprintf(w, "hello world 1, I'm running on %s with an %s CPU ", runtime.GOOS,runtime.GOARCH)

}
 
func main(){
	http.HandleFunc("/", indexHandler)
	http.ListenAndServe(":" + os.Getenv("PORT") ,nil)
}
