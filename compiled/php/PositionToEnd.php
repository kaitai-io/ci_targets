<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class PositionToEnd extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\PositionToEnd $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
        }
        protected $_m_index;
        public function index() {
            if ($this->_m_index !== null)
                return $this->_m_index;
            $_pos = $this->_io->pos();
            $this->_io->seek($this->_io()->size() - 8);
            $this->_m_index = new \Kaitai\Struct\Tests\PositionToEnd\IndexObj($this->_io, $this, $this->_root);
            $this->_io->seek($_pos);
            return $this->_m_index;
        }
    }
}

namespace Kaitai\Struct\Tests\PositionToEnd {
    class IndexObj extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\PositionToEnd $_parent = null, ?\Kaitai\Struct\Tests\PositionToEnd $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_foo = $this->_io->readU4le();
            $this->_m_bar = $this->_io->readU4le();
        }
        protected $_m_foo;
        protected $_m_bar;
        public function foo() { return $this->_m_foo; }
        public function bar() { return $this->_m_bar; }
    }
}
