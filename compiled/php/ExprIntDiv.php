<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ExprIntDiv extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ExprIntDiv $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_intU = $this->_io->readU4le();
            $this->_m_intS = $this->_io->readS4le();
        }
        public function divNegConst() {
            if ($this->_m_divNegConst !== null)
                return $this->_m_divNegConst;
            $this->_m_divNegConst = intval(-9837 / 13);
            return $this->_m_divNegConst;
        }
        public function divNegSeq() {
            if ($this->_m_divNegSeq !== null)
                return $this->_m_divNegSeq;
            $this->_m_divNegSeq = intval($this->intS() / 13);
            return $this->_m_divNegSeq;
        }
        public function divPosConst() {
            if ($this->_m_divPosConst !== null)
                return $this->_m_divPosConst;
            $this->_m_divPosConst = intval(9837 / 13);
            return $this->_m_divPosConst;
        }
        public function divPosSeq() {
            if ($this->_m_divPosSeq !== null)
                return $this->_m_divPosSeq;
            $this->_m_divPosSeq = intval($this->intU() / 13);
            return $this->_m_divPosSeq;
        }
        public function intU() { return $this->_m_intU; }
        public function intS() { return $this->_m_intS; }
        protected $_m_divNegConst;
        protected $_m_divNegSeq;
        protected $_m_divPosConst;
        protected $_m_divPosSeq;
        protected $_m_intU;
        protected $_m_intS;
    }
}
