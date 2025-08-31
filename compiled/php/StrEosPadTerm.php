<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class StrEosPadTerm extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\StrEosPadTerm $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m__raw_strPad = $this->_io->readBytes(20);
            $_io__raw_strPad = new \Kaitai\Struct\Stream($this->_m__raw_strPad);
            $this->_m_strPad = new \Kaitai\Struct\Tests\StrEosPadTerm\StrPadType($_io__raw_strPad, $this, $this->_root);
            $this->_m__raw_strTerm = $this->_io->readBytes(20);
            $_io__raw_strTerm = new \Kaitai\Struct\Stream($this->_m__raw_strTerm);
            $this->_m_strTerm = new \Kaitai\Struct\Tests\StrEosPadTerm\StrTermType($_io__raw_strTerm, $this, $this->_root);
            $this->_m__raw_strTermAndPad = $this->_io->readBytes(20);
            $_io__raw_strTermAndPad = new \Kaitai\Struct\Stream($this->_m__raw_strTermAndPad);
            $this->_m_strTermAndPad = new \Kaitai\Struct\Tests\StrEosPadTerm\StrTermAndPadType($_io__raw_strTermAndPad, $this, $this->_root);
            $this->_m__raw_strTermInclude = $this->_io->readBytes(20);
            $_io__raw_strTermInclude = new \Kaitai\Struct\Stream($this->_m__raw_strTermInclude);
            $this->_m_strTermInclude = new \Kaitai\Struct\Tests\StrEosPadTerm\StrTermIncludeType($_io__raw_strTermInclude, $this, $this->_root);
        }
        protected $_m_strPad;
        protected $_m_strTerm;
        protected $_m_strTermAndPad;
        protected $_m_strTermInclude;
        protected $_m__raw_strPad;
        protected $_m__raw_strTerm;
        protected $_m__raw_strTermAndPad;
        protected $_m__raw_strTermInclude;
        public function strPad() { return $this->_m_strPad; }
        public function strTerm() { return $this->_m_strTerm; }
        public function strTermAndPad() { return $this->_m_strTermAndPad; }
        public function strTermInclude() { return $this->_m_strTermInclude; }
        public function _raw_strPad() { return $this->_m__raw_strPad; }
        public function _raw_strTerm() { return $this->_m__raw_strTerm; }
        public function _raw_strTermAndPad() { return $this->_m__raw_strTermAndPad; }
        public function _raw_strTermInclude() { return $this->_m__raw_strTermInclude; }
    }
}

namespace Kaitai\Struct\Tests\StrEosPadTerm {
    class StrPadType extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\StrEosPadTerm $_parent = null, ?\Kaitai\Struct\Tests\StrEosPadTerm $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_value = \Kaitai\Struct\Stream::bytesToStr(\Kaitai\Struct\Stream::bytesStripRight($this->_io->readBytesFull(), 64), "UTF-8");
        }
        protected $_m_value;
        public function value() { return $this->_m_value; }
    }
}

namespace Kaitai\Struct\Tests\StrEosPadTerm {
    class StrTermAndPadType extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\StrEosPadTerm $_parent = null, ?\Kaitai\Struct\Tests\StrEosPadTerm $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_value = \Kaitai\Struct\Stream::bytesToStr(\Kaitai\Struct\Stream::bytesTerminate(\Kaitai\Struct\Stream::bytesStripRight($this->_io->readBytesFull(), 43), 64, false), "UTF-8");
        }
        protected $_m_value;
        public function value() { return $this->_m_value; }
    }
}

namespace Kaitai\Struct\Tests\StrEosPadTerm {
    class StrTermIncludeType extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\StrEosPadTerm $_parent = null, ?\Kaitai\Struct\Tests\StrEosPadTerm $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_value = \Kaitai\Struct\Stream::bytesToStr(\Kaitai\Struct\Stream::bytesTerminate($this->_io->readBytesFull(), 64, true), "UTF-8");
        }
        protected $_m_value;
        public function value() { return $this->_m_value; }
    }
}

namespace Kaitai\Struct\Tests\StrEosPadTerm {
    class StrTermType extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\StrEosPadTerm $_parent = null, ?\Kaitai\Struct\Tests\StrEosPadTerm $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_value = \Kaitai\Struct\Stream::bytesToStr(\Kaitai\Struct\Stream::bytesTerminate($this->_io->readBytesFull(), 64, false), "UTF-8");
        }
        protected $_m_value;
        public function value() { return $this->_m_value; }
    }
}
