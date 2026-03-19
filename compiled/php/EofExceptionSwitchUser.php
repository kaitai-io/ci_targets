<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class EofExceptionSwitchUser extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\EofExceptionSwitchUser $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_code = $this->_io->readU2le();
            switch ($this->code()) {
                case 2:
                    $this->_m_data = new \Kaitai\Struct\Tests\EofExceptionSwitchUser\Two($this->_io, $this, $this->_root);
                    break;
                case 511:
                    $this->_m_data = new \Kaitai\Struct\Tests\EofExceptionSwitchUser\One($this->_io, $this, $this->_root);
                    break;
            }
        }
        public function code() { return $this->_m_code; }
        public function data() { return $this->_m_data; }
        protected $_m_code;
        protected $_m_data;
    }
}

namespace Kaitai\Struct\Tests\EofExceptionSwitchUser {
    class One extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\EofExceptionSwitchUser $_parent = null, ?\Kaitai\Struct\Tests\EofExceptionSwitchUser $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_val = $this->_io->readS2le();
        }
        public function val() { return $this->_m_val; }
        protected $_m_val;
    }
}

namespace Kaitai\Struct\Tests\EofExceptionSwitchUser {
    class Two extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\EofExceptionSwitchUser $_parent = null, ?\Kaitai\Struct\Tests\EofExceptionSwitchUser $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_val = $this->_io->readU2le();
        }
        public function val() { return $this->_m_val; }
        protected $_m_val;
    }
}
