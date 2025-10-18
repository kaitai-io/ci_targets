<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ExprIfIntEq extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ExprIfIntEq $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_skip = $this->_io->readBytes(2);
            $this->_m_seq = $this->_io->readS2le();
            if (true) {
                $this->_m_seqIf = $this->_io->readS2le();
            }
        }
        public function calc() {
            if ($this->_m_calc !== null)
                return $this->_m_calc;
            $this->_m_calc = 16705;
            return $this->_m_calc;
        }
        public function calcEqCalcIf() {
            if ($this->_m_calcEqCalcIf !== null)
                return $this->_m_calcEqCalcIf;
            $this->_m_calcEqCalcIf = $this->calc() == $this->calcIf();
            return $this->_m_calcEqCalcIf;
        }
        public function calcEqLit() {
            if ($this->_m_calcEqLit !== null)
                return $this->_m_calcEqLit;
            $this->_m_calcEqLit = $this->calc() == 16705;
            return $this->_m_calcEqLit;
        }
        public function calcEqSeqIf() {
            if ($this->_m_calcEqSeqIf !== null)
                return $this->_m_calcEqSeqIf;
            $this->_m_calcEqSeqIf = $this->calc() == $this->seqIf();
            return $this->_m_calcEqSeqIf;
        }
        public function calcIf() {
            if ($this->_m_calcIf !== null)
                return $this->_m_calcIf;
            if (true) {
                $this->_m_calcIf = 16705;
            }
            return $this->_m_calcIf;
        }
        public function calcIfEqLit() {
            if ($this->_m_calcIfEqLit !== null)
                return $this->_m_calcIfEqLit;
            $this->_m_calcIfEqLit = $this->calcIf() == 16705;
            return $this->_m_calcIfEqLit;
        }
        public function calcIfEqSeqIf() {
            if ($this->_m_calcIfEqSeqIf !== null)
                return $this->_m_calcIfEqSeqIf;
            $this->_m_calcIfEqSeqIf = $this->calcIf() == $this->seqIf();
            return $this->_m_calcIfEqSeqIf;
        }
        public function seqEqCalc() {
            if ($this->_m_seqEqCalc !== null)
                return $this->_m_seqEqCalc;
            $this->_m_seqEqCalc = $this->seq() == $this->calc();
            return $this->_m_seqEqCalc;
        }
        public function seqEqCalcIf() {
            if ($this->_m_seqEqCalcIf !== null)
                return $this->_m_seqEqCalcIf;
            $this->_m_seqEqCalcIf = $this->seq() == $this->calcIf();
            return $this->_m_seqEqCalcIf;
        }
        public function seqEqLit() {
            if ($this->_m_seqEqLit !== null)
                return $this->_m_seqEqLit;
            $this->_m_seqEqLit = $this->seq() == 16705;
            return $this->_m_seqEqLit;
        }
        public function seqEqSeqIf() {
            if ($this->_m_seqEqSeqIf !== null)
                return $this->_m_seqEqSeqIf;
            $this->_m_seqEqSeqIf = $this->seq() == $this->seqIf();
            return $this->_m_seqEqSeqIf;
        }
        public function seqIfEqLit() {
            if ($this->_m_seqIfEqLit !== null)
                return $this->_m_seqIfEqLit;
            $this->_m_seqIfEqLit = $this->seqIf() == 16705;
            return $this->_m_seqIfEqLit;
        }
        public function skip() { return $this->_m_skip; }
        public function seq() { return $this->_m_seq; }
        public function seqIf() { return $this->_m_seqIf; }
        protected $_m_calc;
        protected $_m_calcEqCalcIf;
        protected $_m_calcEqLit;
        protected $_m_calcEqSeqIf;
        protected $_m_calcIf;
        protected $_m_calcIfEqLit;
        protected $_m_calcIfEqSeqIf;
        protected $_m_seqEqCalc;
        protected $_m_seqEqCalcIf;
        protected $_m_seqEqLit;
        protected $_m_seqEqSeqIf;
        protected $_m_seqIfEqLit;
        protected $_m_skip;
        protected $_m_seq;
        protected $_m_seqIf;
    }
}
