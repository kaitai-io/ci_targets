<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class UserType extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\UserType $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_one = new \Kaitai\Struct\Tests\UserType\Header($this->_io, $this, $this->_root);
        }
        public function one() { return $this->_m_one; }
        protected $_m_one;
    }
}

namespace Kaitai\Struct\Tests\UserType {
    class Header extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\UserType $_parent = null, ?\Kaitai\Struct\Tests\UserType $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_width = $this->_io->readU4le();
            $this->_m_height = $this->_io->readU4le();
        }
        public function width() { return $this->_m_width; }
        public function height() { return $this->_m_height; }
        protected $_m_width;
        protected $_m_height;
    }
}
