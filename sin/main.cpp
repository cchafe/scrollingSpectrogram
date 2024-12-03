#include <GL/glut.h>
#include <cmath>

// Define constants
const int WIDTH = 800;
const int HEIGHT = 600;
const float AMPLITUDE = 1.0f;
const float FREQUENCY = 110.1f;

// Define the sinusoidal wave function
float sinusoid(float x) {
    return AMPLITUDE * sin(FREQUENCY * x);
}

// Display function to draw the sinusoidal wave
void display() {
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    // Set up the viewport and projection matrix
    glViewport(0, 0, WIDTH, HEIGHT);
    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    gluOrtho2D(-1, 1, -1, 1);

    // Draw the sinusoidal wave using lines
    glBegin(GL_LINES);
    for (float x = -1.0f; x <= 1.0f; x += 0.01f) {
        float y = sinusoid(x);
        glVertex2f(x, y);
    }
    glEnd();

    glFlush();
    glutSwapBuffers();
}

int main(int argc, char** argv) {
    glutInit(&argc, argv);
    glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGB);
    glutInitWindowSize(WIDTH, HEIGHT);
    glutCreateWindow("Sinusoidal Wave");
    glutDisplayFunc(display);
    glutMainLoop();
    return 0;
}
