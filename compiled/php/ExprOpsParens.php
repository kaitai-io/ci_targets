<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ExprOpsParens extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\ExprOpsParens $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
        }
        protected $_m_boolAnd;
        public function boolAnd() {
            if ($this->_m_boolAnd !== null)
                return $this->_m_boolAnd;
            $this->_m_boolAnd = intval( ((false) && (true)) );
            return $this->_m_boolAnd;
        }
        protected $_m_str0To4;
        public function str0To4() {
            if ($this->_m_str0To4 !== null)
                return $this->_m_str0To4;
            $this->_m_str0To4 = "01234";
            return $this->_m_str0To4;
        }
        protected $_m_boolOr;
        public function boolOr() {
            if ($this->_m_boolOr !== null)
                return $this->_m_boolOr;
            $this->_m_boolOr = intval( ((!(false)) || (false)) );
            return $this->_m_boolOr;
        }
        protected $_m_fE;
        public function fE() {
            if ($this->_m_fE !== null)
                return $this->_m_fE;
            $this->_m_fE = 2.72;
            return $this->_m_fE;
        }
        protected $_m_fSumToInt;
        public function fSumToInt() {
            if ($this->_m_fSumToInt !== null)
                return $this->_m_fSumToInt;
            $this->_m_fSumToInt = intval(($this->f2pi() + $this->fE()));
            return $this->_m_fSumToInt;
        }
        protected $_m_f2pi;
        public function f2pi() {
            if ($this->_m_f2pi !== null)
                return $this->_m_f2pi;
            $this->_m_f2pi = 6.28;
            return $this->_m_f2pi;
        }
        protected $_m_strConcatRev;
        public function strConcatRev() {
            if ($this->_m_strConcatRev !== null)
                return $this->_m_strConcatRev;
            $this->_m_strConcatRev = strrev($this->str0To4() . $this->str5To9());
            return $this->_m_strConcatRev;
        }
        protected $_m_iM13;
        public function iM13() {
            if ($this->_m_iM13 !== null)
                return $this->_m_iM13;
            $this->_m_iM13 = -13;
            return $this->_m_iM13;
        }
        protected $_m_strConcatLen;
        public function strConcatLen() {
            if ($this->_m_strConcatLen !== null)
                return $this->_m_strConcatLen;
            $this->_m_strConcatLen = strlen($this->str0To4() . $this->str5To9());
            return $this->_m_strConcatLen;
        }
        protected $_m_strConcatToI;
        public function strConcatToI() {
            if ($this->_m_strConcatToI !== null)
                return $this->_m_strConcatToI;
            $this->_m_strConcatToI = intval($this->str0To4() . $this->str5To9(), 10);
            return $this->_m_strConcatToI;
        }
        protected $_m_i42;
        public function i42() {
            if ($this->_m_i42 !== null)
                return $this->_m_i42;
            $this->_m_i42 = 42;
            return $this->_m_i42;
        }
        protected $_m_iSumToStr;
        public function iSumToStr() {
            if ($this->_m_iSumToStr !== null)
                return $this->_m_iSumToStr;
            $this->_m_iSumToStr = strval(($this->i42() + $this->iM13()));
            return $this->_m_iSumToStr;
        }
        protected $_m_boolEq;
        public function boolEq() {
            if ($this->_m_boolEq !== null)
                return $this->_m_boolEq;
            $this->_m_boolEq = intval(false == true);
            return $this->_m_boolEq;
        }
        protected $_m_str5To9;
        public function str5To9() {
            if ($this->_m_str5To9 !== null)
                return $this->_m_str5To9;
            $this->_m_str5To9 = "56789";
            return $this->_m_str5To9;
        }
        protected $_m_strConcatSubstr2To7;
        public function strConcatSubstr2To7() {
            if ($this->_m_strConcatSubstr2To7 !== null)
                return $this->_m_strConcatSubstr2To7;
            $this->_m_strConcatSubstr2To7 = \Kaitai\Struct\Stream::substring($this->str0To4() . $this->str5To9(), 2, 7);
            return $this->_m_strConcatSubstr2To7;
        }
    }
}
