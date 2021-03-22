#!/bin/bash
diff <(./composer 2>/dev/null | head -6) <(cat logo.txt)
