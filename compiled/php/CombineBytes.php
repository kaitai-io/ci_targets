<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class CombineBytes extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\CombineBytes $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_bytesTerm = $this->_io->readBytesTerm(124, false, true, true);
            $this->_m_bytesLimit = $this->_io->readBytes(4);
            $this->_m_bytesEos = $this->_io->readBytesFull();
        }
        protected $_m_bytesCalc;
        public function bytesCalc() {
            if ($this->_m_bytesCalc !== null)
                return $this->_m_bytesCalc;
            $this->_m_bytesCalc = "\x52\x6E\x44";
            return $this->_m_bytesCalc;
        }
        protected $_m_eosOrCalc;
        public function eosOrCalc() {
            if ($this->_m_eosOrCalc !== null)
                return $this->_m_eosOrCalc;
            $this->_m_eosOrCalc = (true ? $this->bytesEos() : $this->bytesCalc());
            return $this->_m_eosOrCalc;
        }
        protected $_m_limitOrCalc;
        public function limitOrCalc() {
            if ($this->_m_limitOrCalc !== null)
                return $this->_m_limitOrCalc;
            $this->_m_limitOrCalc = (false ? $this->bytesLimit() : $this->bytesCalc());
            return $this->_m_limitOrCalc;
        }
        protected $_m_limitOrEos;
        public function limitOrEos() {
            if ($this->_m_limitOrEos !== null)
                return $this->_m_limitOrEos;
            $this->_m_limitOrEos = (true ? $this->bytesLimit() : $this->bytesEos());
            return $this->_m_limitOrEos;
        }
        protected $_m_termOrCalc;
        public function termOrCalc() {
            if ($this->_m_termOrCalc !== null)
                return $this->_m_termOrCalc;
            $this->_m_termOrCalc = (true ? $this->bytesTerm() : $this->bytesCalc());
            return $this->_m_termOrCalc;
        }
        protected $_m_termOrEos;
        public function termOrEos() {
            if ($this->_m_termOrEos !== null)
                return $this->_m_termOrEos;
            $this->_m_termOrEos = (false ? $this->bytesTerm() : $this->bytesEos());
            return $this->_m_termOrEos;
        }
        protected $_m_termOrLimit;
        public function termOrLimit() {
            if ($this->_m_termOrLimit !== null)
                return $this->_m_termOrLimit;
            $this->_m_termOrLimit = (true ? $this->bytesTerm() : $this->bytesLimit());
            return $this->_m_termOrLimit;
        }
        protected $_m_bytesTerm;
        protected $_m_bytesLimit;
        protected $_m_bytesEos;
        public function bytesTerm() { return $this->_m_bytesTerm; }
        public function bytesLimit() { return $this->_m_bytesLimit; }
        public function bytesEos() { return $this->_m_bytesEos; }
    }
}
