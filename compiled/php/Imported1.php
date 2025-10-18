<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class Imported1 extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\Imported1 $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_one = $this->_io->readU1();
            $this->_m_two = new \Kaitai\Struct\Tests\Imported2($this->_io);
        }
        public function one() { return $this->_m_one; }
        public function two() { return $this->_m_two; }
        protected $_m_one;
        protected $_m_two;
    }
}
