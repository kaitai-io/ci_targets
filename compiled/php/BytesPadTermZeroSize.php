<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class BytesPadTermZeroSize extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\BytesPadTermZeroSize $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_strPad = \Kaitai\Struct\Stream::bytesStripRight($this->_io->readBytes(0), 64);
            $this->_m_strTerm = \Kaitai\Struct\Stream::bytesTerminate($this->_io->readBytes(0), 64, false);
            $this->_m_strTermAndPad = \Kaitai\Struct\Stream::bytesTerminate(\Kaitai\Struct\Stream::bytesStripRight($this->_io->readBytes(0), 43), 64, false);
            $this->_m_strTermInclude = \Kaitai\Struct\Stream::bytesTerminate($this->_io->readBytes(0), 64, true);
        }
        protected $_m_strPad;
        protected $_m_strTerm;
        protected $_m_strTermAndPad;
        protected $_m_strTermInclude;
        public function strPad() { return $this->_m_strPad; }
        public function strTerm() { return $this->_m_strTerm; }
        public function strTermAndPad() { return $this->_m_strTermAndPad; }
        public function strTermInclude() { return $this->_m_strTermInclude; }
    }
}
