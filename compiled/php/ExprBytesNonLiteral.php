<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ExprBytesNonLiteral extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\ExprBytesNonLiteral $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_one = $this->_io->readU1();
            $this->_m_two = $this->_io->readU1();
        }
        protected $_m_calcBytes;
        public function calcBytes() {
            if ($this->_m_calcBytes !== null)
                return $this->_m_calcBytes;
            $this->_m_calcBytes = pack('C*', $this->one(), $this->two());
            return $this->_m_calcBytes;
        }
        protected $_m_one;
        protected $_m_two;
        public function one() { return $this->_m_one; }
        public function two() { return $this->_m_two; }
    }
}
