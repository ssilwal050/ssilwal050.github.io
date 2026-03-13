<div class="opening-quote">
  <p class="opening-quote__text">"Data is like garbage. You'd better know what you're going to do with it before you collect it."</p>
  <div class="opening-quote__footer">
    <span class="opening-quote__rule"></span>
    <p class="opening-quote__author">Mark Twain</p>
  </div>
</div>

<style>
.opening-quote {
  position: relative;
  overflow: hidden;
  margin: 0.8em 0 1.8em 0;
  padding: 2.4em 2.2em 2em 2.6em;
  border-radius: 14px;
  background: linear-gradient(135deg, #2a7fa8 0%, #2e9e8a 40%, #3ab89a 70%, #4db8c8 100%);
  box-shadow: 0 8px 36px rgba(42, 127, 168, 0.28), inset 0 1px 0 rgba(255,255,255,0.15);
}
.opening-quote::before {
  content: '';
  position: absolute;
  inset: 0;
  background-image: radial-gradient(circle, rgba(255,255,255,0.16) 1.3px, transparent 1.3px);
  background-size: 22px 22px;
  pointer-events: none;
}
.opening-quote::after {
  content: '\201C';
  position: absolute;
  top: -0.05em;
  left: 0.22em;
  font-size: 9em;
  line-height: 1;
  font-family: Georgia, serif;
  color: white;
  opacity: 0.13;
  pointer-events: none;
  user-select: none;
}
.opening-quote__text {
  position: relative;
  font-style: italic;
  font-size: 1.15em;
  line-height: 1.78;
  color: #eaf6fb;
  margin: 0 0 1em 0;
  letter-spacing: 0.01em;
  text-shadow: 0 1px 6px rgba(0,0,0,0.10);
}
.opening-quote__footer {
  position: relative;
  display: flex;
  align-items: center;
  gap: 0.8em;
}
.opening-quote__rule {
  display: block;
  width: 32px;
  height: 2px;
  background: rgba(255,255,255,0.50);
  border-radius: 2px;
  flex-shrink: 0;
}
.opening-quote__author {
  margin: 0;
  font-weight: 700;
  font-size: 0.85em;
  letter-spacing: 0.09em;
  text-transform: uppercase;
  color: rgba(255,255,255,0.78);
}
</style>