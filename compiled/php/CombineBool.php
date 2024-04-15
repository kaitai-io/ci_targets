<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class CombineBool extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\CombineBool $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_boolBit = $this->_io->readBitsIntBe(1) != 0;
        }
        protected $_m_boolCalc;
        public function boolCalc() {
            if ($this->_m_boolCalc !== null)
                return $this->_m_boolCalc;
            $this->_m_boolCalc = false;
            return $this->_m_boolCalc;
        }
        protected $_m_boolCalcBit;
        public function boolCalcBit() {
            if ($this->_m_boolCalcBit !== null)
                return $this->_m_boolCalcBit;
            $this->_m_boolCalcBit = (true ? $this->boolCalc() : $this->boolBit());
            return $this->_m_boolCalcBit;
        }
        protected $_m_boolBit;
        public function boolBit() { return $this->_m_boolBit; }
    }
}
