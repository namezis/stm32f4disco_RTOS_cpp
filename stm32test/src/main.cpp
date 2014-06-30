#include "app.hpp"
#include "tasks.hpp"

#include "ledtask.hpp"

int main(void) {

	Application *app = new Application();
	app->init();

	// Создаем таски по морганию светодиодами
	Task *t1 = new LEDTask(GPIO_Pin_13, 150);
	Task *t2 = new LEDTask(GPIO_Pin_14, 100);
//	Task *t3 = new LEDTask(GPIO_Pin_14, 250);
//	Task *t4 = new LEDTask(GPIO_Pin_15, 100);

	app->attach(t1);
	app->attach(t2);
//	app->attach(t3);
//	app->attach(t4);

	app->start();

	return 0;
}
