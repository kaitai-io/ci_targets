<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ValidFailContentsInst extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ValidFailContentsInst $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            if (strlen($this->foo()) == 0) {
                $this->_m_a = $this->_io->readBytes(0);
            }
        }
        protected $_m_foo;
        public function foo() {
            if ($this->_m_foo !== null)
                return $this->_m_foo;
            $_pos = $this->_io->pos();
            $this->_io->seek(0);
            $this->_m_foo = $this->_io->readBytes(2);
            $this->_io->seek($_pos);
            return $this->_m_foo;
        }
        protected $_m_a;
        public function a() { return $this->_m_a; }
    }
}
