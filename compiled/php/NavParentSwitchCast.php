<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class NavParentSwitchCast extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\NavParentSwitchCast $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_main = new \Kaitai\Struct\Tests\NavParentSwitchCast\Foo($this->_io, $this, $this->_root);
        }
        protected $_m_main;
        public function main() { return $this->_m_main; }
    }
}

namespace Kaitai\Struct\Tests\NavParentSwitchCast {
    class Foo extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\NavParentSwitchCast $_parent = null, \Kaitai\Struct\Tests\NavParentSwitchCast $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_bufType = $this->_io->readU1();
            $this->_m_flag = $this->_io->readU1();
            switch ($this->bufType()) {
                case 0:
                    $this->_m__raw_buf = $this->_io->readBytes(4);
                    $_io__raw_buf = new \Kaitai\Struct\Stream($this->_m__raw_buf);
                    $this->_m_buf = new \Kaitai\Struct\Tests\NavParentSwitchCast\Foo\Zero($_io__raw_buf, $this, $this->_root);
                    break;
                case 1:
                    $this->_m__raw_buf = $this->_io->readBytes(4);
                    $_io__raw_buf = new \Kaitai\Struct\Stream($this->_m__raw_buf);
                    $this->_m_buf = new \Kaitai\Struct\Tests\NavParentSwitchCast\Foo\One($_io__raw_buf, $this, $this->_root);
                    break;
                default:
                    $this->_m_buf = $this->_io->readBytes(4);
                    break;
            }
        }
        protected $_m_bufType;
        protected $_m_flag;
        protected $_m_buf;
        protected $_m__raw_buf;
        public function bufType() { return $this->_m_bufType; }
        public function flag() { return $this->_m_flag; }
        public function buf() { return $this->_m_buf; }
        public function _raw_buf() { return $this->_m__raw_buf; }
    }
}

namespace Kaitai\Struct\Tests\NavParentSwitchCast\Foo {
    class Common extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\NavParentSwitchCast $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
        }
        protected $_m_flag;
        public function flag() {
            if ($this->_m_flag !== null)
                return $this->_m_flag;
            $this->_m_flag = $this->_parent()->_parent()->flag();
            return $this->_m_flag;
        }
    }
}

namespace Kaitai\Struct\Tests\NavParentSwitchCast\Foo {
    class One extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\NavParentSwitchCast\Foo $_parent = null, \Kaitai\Struct\Tests\NavParentSwitchCast $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_branch = new \Kaitai\Struct\Tests\NavParentSwitchCast\Foo\Common($this->_io, $this, $this->_root);
        }
        protected $_m_branch;
        public function branch() { return $this->_m_branch; }
    }
}

namespace Kaitai\Struct\Tests\NavParentSwitchCast\Foo {
    class Zero extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\NavParentSwitchCast\Foo $_parent = null, \Kaitai\Struct\Tests\NavParentSwitchCast $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_branch = new \Kaitai\Struct\Tests\NavParentSwitchCast\Foo\Common($this->_io, $this, $this->_root);
        }
        protected $_m_branch;
        public function branch() { return $this->_m_branch; }
    }
}
