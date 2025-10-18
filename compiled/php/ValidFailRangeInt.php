<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ValidFailRangeInt extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ValidFailRangeInt $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_foo = $this->_io->readU1();
            if (!($this->_m_foo >= 5)) {
                throw new \Kaitai\Struct\Error\ValidationLessThanError(5, $this->_m_foo, $this->_io, "/seq/0");
            }
            if (!($this->_m_foo <= 10)) {
                throw new \Kaitai\Struct\Error\ValidationGreaterThanError(10, $this->_m_foo, $this->_io, "/seq/0");
            }
        }
        public function foo() { return $this->_m_foo; }
        protected $_m_foo;
    }
}
