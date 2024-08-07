<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ValidFailRepeatAnyofInt extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\ValidFailRepeatAnyofInt $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_foo = [];
            $i = 0;
            while (!$this->_io->isEof()) {
                $this->_m_foo[] = $this->_io->readU1();
                if (!( (($this->_m_foo[$i] == 0) || ($this->_m_foo[$i] == 1) || ($this->_m_foo[$i] == 65)) )) {
                    throw new \Kaitai\Struct\Error\ValidationNotAnyOfError($this->_m_foo[$i], $this->_io, "/seq/0");
                }
                $i++;
            }
        }
        protected $_m_foo;
        public function foo() { return $this->_m_foo; }
    }
}
