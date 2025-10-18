<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ExprToITrailing extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ExprToITrailing $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
        }
        public function toIGarbage() {
            if ($this->_m_toIGarbage !== null)
                return $this->_m_toIGarbage;
            $this->_m_toIGarbage = intval("123_.^", 10);
            return $this->_m_toIGarbage;
        }
        public function toIR10() {
            if ($this->_m_toIR10 !== null)
                return $this->_m_toIR10;
            $this->_m_toIR10 = intval("9173abc", 10);
            return $this->_m_toIR10;
        }
        public function toIR16() {
            if ($this->_m_toIR16 !== null)
                return $this->_m_toIR16;
            $this->_m_toIR16 = intval("9173abc", 16);
            return $this->_m_toIR16;
        }
        protected $_m_toIGarbage;
        protected $_m_toIR10;
        protected $_m_toIR16;
    }
}
