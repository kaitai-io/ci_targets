<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ValidFailRangeFloat extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\ValidFailRangeFloat $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_foo = $this->_io->readF4le();
            if (!($this->foo() >= 0.2)) {
                throw new \Kaitai\Struct\Error\ValidationLessThanError(0.2, $this->foo(), $this->_io(), "/seq/0");
            }
            if (!($this->foo() <= 0.4)) {
                throw new \Kaitai\Struct\Error\ValidationGreaterThanError(0.4, $this->foo(), $this->_io(), "/seq/0");
            }
        }
        protected $_m_foo;
        public function foo() { return $this->_m_foo; }
    }
}
