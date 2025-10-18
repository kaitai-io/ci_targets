<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ProcessBytesPadTerm extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ProcessBytesPadTerm $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m__raw_strPad = \Kaitai\Struct\Stream::bytesStripRight($this->_io->readBytes(20), 64);
            $this->_m_strPad = \Kaitai\Struct\Stream::processXorOne($this->_m__raw_strPad, 21);
            $this->_m__raw_strTerm = \Kaitai\Struct\Stream::bytesTerminate($this->_io->readBytes(20), 64, false);
            $this->_m_strTerm = \Kaitai\Struct\Stream::processXorOne($this->_m__raw_strTerm, 21);
            $this->_m__raw_strTermAndPad = \Kaitai\Struct\Stream::bytesTerminate(\Kaitai\Struct\Stream::bytesStripRight($this->_io->readBytes(20), 43), 64, false);
            $this->_m_strTermAndPad = \Kaitai\Struct\Stream::processXorOne($this->_m__raw_strTermAndPad, 21);
            $this->_m__raw_strTermInclude = \Kaitai\Struct\Stream::bytesTerminate($this->_io->readBytes(20), 64, true);
            $this->_m_strTermInclude = \Kaitai\Struct\Stream::processXorOne($this->_m__raw_strTermInclude, 21);
        }
        public function strPad() { return $this->_m_strPad; }
        public function strTerm() { return $this->_m_strTerm; }
        public function strTermAndPad() { return $this->_m_strTermAndPad; }
        public function strTermInclude() { return $this->_m_strTermInclude; }
        public function _raw_strPad() { return $this->_m__raw_strPad; }
        public function _raw_strTerm() { return $this->_m__raw_strTerm; }
        public function _raw_strTermAndPad() { return $this->_m__raw_strTermAndPad; }
        public function _raw_strTermInclude() { return $this->_m__raw_strTermInclude; }
        protected $_m_strPad;
        protected $_m_strTerm;
        protected $_m_strTermAndPad;
        protected $_m_strTermInclude;
        protected $_m__raw_strPad;
        protected $_m__raw_strTerm;
        protected $_m__raw_strTermAndPad;
        protected $_m__raw_strTermInclude;
    }
}
