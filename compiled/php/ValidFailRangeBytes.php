<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ValidFailRangeBytes extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\ValidFailRangeBytes $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_foo = $this->_io->readBytes(2);
            if (!($this->foo() >= "\x50")) {
                throw new \Kaitai\Struct\Error\ValidationLessThanError("\x50", $this->foo(), $this->_io(), "/seq/0");
            }
            if (!($this->foo() <= "\x50\x31")) {
                throw new \Kaitai\Struct\Error\ValidationGreaterThanError("\x50\x31", $this->foo(), $this->_io(), "/seq/0");
            }
        }
        protected $_m_foo;
        public function foo() { return $this->_m_foo; }
    }
}
