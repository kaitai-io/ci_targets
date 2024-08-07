<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ValidFailAnyofInt extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\ValidFailAnyofInt $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_foo = $this->_io->readU1();
            if (!( (($this->_m_foo == 5) || ($this->_m_foo == 6) || ($this->_m_foo == 7) || ($this->_m_foo == 8) || ($this->_m_foo == 10) || ($this->_m_foo == 11) || ($this->_m_foo == 12) || ($this->_m_foo == 47)) )) {
                throw new \Kaitai\Struct\Error\ValidationNotAnyOfError($this->_m_foo, $this->_io, "/seq/0");
            }
        }
        protected $_m_foo;
        public function foo() { return $this->_m_foo; }
    }
}
