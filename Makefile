.PHONY: all resume writing pages assets clean serve

all: assets pages resume writing

# Copy static assets
assets:
	@mkdir -p _site/css
	cp css/*.css _site/css/
	cp profile.jpg _site/

# Build the homepage
pages:
	@mkdir -p _site
	pandoc index.md \
		-o _site/index.html \
		--standalone \
		--template=templates/page.html \
		--css=/css/main.css

# Build the resume — HTML + PDFs (full and minimal versions)
resume:
	@mkdir -p _site/resume
	pandoc resume/index.md \
		-o _site/resume/index.html \
		--standalone \
		--template=templates/resume.html \
		--css=/css/main.css \
		--css=/css/resume.css
	pandoc resume/index.md \
		-o _site/resume/resume.pdf \
		--pdf-engine=typst \
		--include-in-header=templates/resume.typ \
		-M title=

# Build all writing posts
writing:
	@mkdir -p _site/writing
	pandoc writing/index.md \
		-o _site/writing/index.html \
		--standalone \
		--template=templates/page.html \
		--css=/css/main.css
	@for dir in writing/*/; do \
		slug=$$(basename "$$dir"); \
		if [ -f "$$dir/index.md" ]; then \
			mkdir -p "_site/writing/$$slug"; \
			pandoc "$$dir/index.md" \
				-o "_site/writing/$$slug/index.html" \
				--standalone \
				--template=templates/page.html \
				--css=/css/main.css; \
		fi; \
	done

clean:
	rm -rf _site

serve: clean all
	cd _site && python3 -m http.server 8000
