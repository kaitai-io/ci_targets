<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class TypeIntUnaryOp extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\TypeIntUnaryOp $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_valueS2 = $this->_io->readS2le();
            $this->_m_valueS8 = $this->_io->readS8le();
        }
        public function unaryS2() {
            if ($this->_m_unaryS2 !== null)
                return $this->_m_unaryS2;
            $this->_m_unaryS2 = -($this->valueS2());
            return $this->_m_unaryS2;
        }
        public function unaryS8() {
            if ($this->_m_unaryS8 !== null)
                return $this->_m_unaryS8;
            $this->_m_unaryS8 = -($this->valueS8());
            return $this->_m_unaryS8;
        }
        public function valueS2() { return $this->_m_valueS2; }
        public function valueS8() { return $this->_m_valueS8; }
        protected $_m_unaryS2;
        protected $_m_unaryS8;
        protected $_m_valueS2;
        protected $_m_valueS8;
    }
}
