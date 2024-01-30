# XV6-docker
A collection of Dockerfile and docker-compose services to run the xv6-riscv operating system.

## Installation

### MacOS
1. Install Docker
- If you're using MacOS, https://orbstack.dev/ seems to be a good alternative

2. Clone this repo

3. Run the setup file:
   MacOS:
> ./setup.sh

Windows:
> TBD

4. Your environment should now be ready

## Running

For normal run:
> docker-compose run dev

For debugging run (with gdb).
On two separate terminals:
> docker-compose run debug

> docker-compose run gdb