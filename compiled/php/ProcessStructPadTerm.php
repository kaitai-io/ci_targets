<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ProcessStructPadTerm extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ProcessStructPadTerm $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m__raw__raw_strPad = \Kaitai\Struct\Stream::bytesStripRight($this->_io->readBytes(20), 64);
            $this->_m__raw_strPad = \Kaitai\Struct\Stream::processXorOne($this->_m__raw__raw_strPad, 21);
            $_io__raw_strPad = new \Kaitai\Struct\Stream($this->_m__raw_strPad);
            $this->_m_strPad = new \Kaitai\Struct\Tests\ProcessStructPadTerm\BytesWrapper($_io__raw_strPad, $this, $this->_root);
            $this->_m__raw__raw_strTerm = \Kaitai\Struct\Stream::bytesTerminate($this->_io->readBytes(20), 64, false);
            $this->_m__raw_strTerm = \Kaitai\Struct\Stream::processXorOne($this->_m__raw__raw_strTerm, 21);
            $_io__raw_strTerm = new \Kaitai\Struct\Stream($this->_m__raw_strTerm);
            $this->_m_strTerm = new \Kaitai\Struct\Tests\ProcessStructPadTerm\BytesWrapper($_io__raw_strTerm, $this, $this->_root);
            $this->_m__raw__raw_strTermAndPad = \Kaitai\Struct\Stream::bytesTerminate(\Kaitai\Struct\Stream::bytesStripRight($this->_io->readBytes(20), 43), 64, false);
            $this->_m__raw_strTermAndPad = \Kaitai\Struct\Stream::processXorOne($this->_m__raw__raw_strTermAndPad, 21);
            $_io__raw_strTermAndPad = new \Kaitai\Struct\Stream($this->_m__raw_strTermAndPad);
            $this->_m_strTermAndPad = new \Kaitai\Struct\Tests\ProcessStructPadTerm\BytesWrapper($_io__raw_strTermAndPad, $this, $this->_root);
            $this->_m__raw__raw_strTermInclude = \Kaitai\Struct\Stream::bytesTerminate($this->_io->readBytes(20), 64, true);
            $this->_m__raw_strTermInclude = \Kaitai\Struct\Stream::processXorOne($this->_m__raw__raw_strTermInclude, 21);
            $_io__raw_strTermInclude = new \Kaitai\Struct\Stream($this->_m__raw_strTermInclude);
            $this->_m_strTermInclude = new \Kaitai\Struct\Tests\ProcessStructPadTerm\BytesWrapper($_io__raw_strTermInclude, $this, $this->_root);
        }
        protected $_m_strPad;
        protected $_m_strTerm;
        protected $_m_strTermAndPad;
        protected $_m_strTermInclude;
        protected $_m__raw_strPad;
        protected $_m__raw__raw_strPad;
        protected $_m__raw_strTerm;
        protected $_m__raw__raw_strTerm;
        protected $_m__raw_strTermAndPad;
        protected $_m__raw__raw_strTermAndPad;
        protected $_m__raw_strTermInclude;
        protected $_m__raw__raw_strTermInclude;
        public function strPad() { return $this->_m_strPad; }
        public function strTerm() { return $this->_m_strTerm; }
        public function strTermAndPad() { return $this->_m_strTermAndPad; }
        public function strTermInclude() { return $this->_m_strTermInclude; }
        public function _raw_strPad() { return $this->_m__raw_strPad; }
        public function _raw__raw_strPad() { return $this->_m__raw__raw_strPad; }
        public function _raw_strTerm() { return $this->_m__raw_strTerm; }
        public function _raw__raw_strTerm() { return $this->_m__raw__raw_strTerm; }
        public function _raw_strTermAndPad() { return $this->_m__raw_strTermAndPad; }
        public function _raw__raw_strTermAndPad() { return $this->_m__raw__raw_strTermAndPad; }
        public function _raw_strTermInclude() { return $this->_m__raw_strTermInclude; }
        public function _raw__raw_strTermInclude() { return $this->_m__raw__raw_strTermInclude; }
    }
}

namespace Kaitai\Struct\Tests\ProcessStructPadTerm {
    class BytesWrapper extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\ProcessStructPadTerm $_parent = null, ?\Kaitai\Struct\Tests\ProcessStructPadTerm $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_value = $this->_io->readBytesFull();
        }
        protected $_m_value;
        public function value() { return $this->_m_value; }
    }
}
