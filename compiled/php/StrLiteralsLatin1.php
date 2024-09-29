<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class StrLiteralsLatin1 extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\StrLiteralsLatin1 $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_lenParsed = $this->_io->readU2le();
            $this->_m_parsed = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes($this->lenParsed()), "UTF-8");
        }
        protected $_m_parsedEqLiteral;
        public function parsedEqLiteral() {
            if ($this->_m_parsedEqLiteral !== null)
                return $this->_m_parsedEqLiteral;
            $this->_m_parsedEqLiteral = $this->parsed() == "\243";
            return $this->_m_parsedEqLiteral;
        }
        protected $_m_lenParsed;
        protected $_m_parsed;
        public function lenParsed() { return $this->_m_lenParsed; }
        public function parsed() { return $this->_m_parsed; }
    }
}
