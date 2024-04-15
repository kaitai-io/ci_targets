<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ValidFailRangeStr extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\ValidFailRangeStr $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_foo = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes(2), "ASCII");
            if (!($this->foo() >= "P")) {
                throw new \Kaitai\Struct\Error\ValidationLessThanError("P", $this->foo(), $this->_io(), "/seq/0");
            }
            if (!($this->foo() <= "P1")) {
                throw new \Kaitai\Struct\Error\ValidationGreaterThanError("P1", $this->foo(), $this->_io(), "/seq/0");
            }
        }
        protected $_m_foo;
        public function foo() { return $this->_m_foo; }
    }
}
