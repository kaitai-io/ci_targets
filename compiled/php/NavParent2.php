<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class NavParent2 extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\NavParent2 $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_ofsTags = $this->_io->readU4le();
            $this->_m_numTags = $this->_io->readU4le();
            $this->_m_tags = [];
            $n = $this->numTags();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_tags[] = new \Kaitai\Struct\Tests\NavParent2\Tag($this->_io, $this, $this->_root);
            }
        }
        protected $_m_ofsTags;
        protected $_m_numTags;
        protected $_m_tags;
        public function ofsTags() { return $this->_m_ofsTags; }
        public function numTags() { return $this->_m_numTags; }
        public function tags() { return $this->_m_tags; }
    }
}

namespace Kaitai\Struct\Tests\NavParent2 {
    class Tag extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\NavParent2 $_parent = null, ?\Kaitai\Struct\Tests\NavParent2 $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_name = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes(4), "ASCII");
            $this->_m_ofs = $this->_io->readU4le();
            $this->_m_numItems = $this->_io->readU4le();
        }
        protected $_m_tagContent;
        public function tagContent() {
            if ($this->_m_tagContent !== null)
                return $this->_m_tagContent;
            $io = $this->_root()->_io();
            $_pos = $io->pos();
            $io->seek($this->ofs());
            switch ($this->name()) {
                case "RAHC":
                    $this->_m_tagContent = new \Kaitai\Struct\Tests\NavParent2\Tag\TagChar($io, $this, $this->_root);
                    break;
            }
            $io->seek($_pos);
            return $this->_m_tagContent;
        }
        protected $_m_name;
        protected $_m_ofs;
        protected $_m_numItems;
        public function name() { return $this->_m_name; }
        public function ofs() { return $this->_m_ofs; }
        public function numItems() { return $this->_m_numItems; }
    }
}

namespace Kaitai\Struct\Tests\NavParent2\Tag {
    class TagChar extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\NavParent2\Tag $_parent = null, ?\Kaitai\Struct\Tests\NavParent2 $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_content = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes($this->_parent()->numItems()), "ASCII");
        }
        protected $_m_content;
        public function content() { return $this->_m_content; }
    }
}
