from mylib.bot import scrape
import click

@click.command()
@click.option('--name',
                help= 'Web page we want to scrape')
@click.option('--length',
                help= 'length')
def cli(name, length):
    result = scrape(name, length= length)
    click.echo(click.style(f"{result}", fg="blue"))

if __name__ == '__main__':
    cli()