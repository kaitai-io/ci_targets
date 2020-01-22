<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class StrCombine extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\StrCombine $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_strTerm = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytesTerm(124, false, true, true), "ASCII");
            $this->_m_strLimit = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes(4), "ASCII");
            $this->_m_strEos = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytesFull(), "ASCII");
        }
        protected $_m_limitOrCalcBytes;
        public function limitOrCalcBytes() {
            if ($this->_m_limitOrCalcBytes !== null)
                return $this->_m_limitOrCalcBytes;
            $this->_m_limitOrCalcBytes = (true ? $this->strLimit() : $this->strCalcBytes());
            return $this->_m_limitOrCalcBytes;
        }
        protected $_m_limitOrCalc;
        public function limitOrCalc() {
            if ($this->_m_limitOrCalc !== null)
                return $this->_m_limitOrCalc;
            $this->_m_limitOrCalc = (false ? $this->strLimit() : $this->strCalc());
            return $this->_m_limitOrCalc;
        }
        protected $_m_termOrLimit;
        public function termOrLimit() {
            if ($this->_m_termOrLimit !== null)
                return $this->_m_termOrLimit;
            $this->_m_termOrLimit = (true ? $this->strTerm() : $this->strLimit());
            return $this->_m_termOrLimit;
        }
        protected $_m_limitOrEos;
        public function limitOrEos() {
            if ($this->_m_limitOrEos !== null)
                return $this->_m_limitOrEos;
            $this->_m_limitOrEos = (true ? $this->strLimit() : $this->strEos());
            return $this->_m_limitOrEos;
        }
        protected $_m_calcOrCalcBytes;
        public function calcOrCalcBytes() {
            if ($this->_m_calcOrCalcBytes !== null)
                return $this->_m_calcOrCalcBytes;
            $this->_m_calcOrCalcBytes = (false ? $this->strCalc() : $this->strCalcBytes());
            return $this->_m_calcOrCalcBytes;
        }
        protected $_m_strCalcBytes;
        public function strCalcBytes() {
            if ($this->_m_strCalcBytes !== null)
                return $this->_m_strCalcBytes;
            $this->_m_strCalcBytes = \Kaitai\Struct\Stream::bytesToStr($this->calcBytes(), "ASCII");
            return $this->_m_strCalcBytes;
        }
        protected $_m_eosOrCalc;
        public function eosOrCalc() {
            if ($this->_m_eosOrCalc !== null)
                return $this->_m_eosOrCalc;
            $this->_m_eosOrCalc = (false ? $this->strEos() : $this->strCalc());
            return $this->_m_eosOrCalc;
        }
        protected $_m_termOrCalc;
        public function termOrCalc() {
            if ($this->_m_termOrCalc !== null)
                return $this->_m_termOrCalc;
            $this->_m_termOrCalc = (true ? $this->strTerm() : $this->strCalc());
            return $this->_m_termOrCalc;
        }
        protected $_m_termOrCalcBytes;
        public function termOrCalcBytes() {
            if ($this->_m_termOrCalcBytes !== null)
                return $this->_m_termOrCalcBytes;
            $this->_m_termOrCalcBytes = (false ? $this->strTerm() : $this->strCalcBytes());
            return $this->_m_termOrCalcBytes;
        }
        protected $_m_termOrEos;
        public function termOrEos() {
            if ($this->_m_termOrEos !== null)
                return $this->_m_termOrEos;
            $this->_m_termOrEos = (false ? $this->strTerm() : $this->strEos());
            return $this->_m_termOrEos;
        }
        protected $_m_strCalc;
        public function strCalc() {
            if ($this->_m_strCalc !== null)
                return $this->_m_strCalc;
            $this->_m_strCalc = "bar";
            return $this->_m_strCalc;
        }
        protected $_m_eosOrCalcBytes;
        public function eosOrCalcBytes() {
            if ($this->_m_eosOrCalcBytes !== null)
                return $this->_m_eosOrCalcBytes;
            $this->_m_eosOrCalcBytes = (true ? $this->strEos() : $this->strCalcBytes());
            return $this->_m_eosOrCalcBytes;
        }
        protected $_m_calcBytes;
        public function calcBytes() {
            if ($this->_m_calcBytes !== null)
                return $this->_m_calcBytes;
            $this->_m_calcBytes = "\x62\x61\x7A";
            return $this->_m_calcBytes;
        }
        protected $_m_strTerm;
        protected $_m_strLimit;
        protected $_m_strEos;
        public function strTerm() { return $this->_m_strTerm; }
        public function strLimit() { return $this->_m_strLimit; }
        public function strEos() { return $this->_m_strEos; }
    }
}
