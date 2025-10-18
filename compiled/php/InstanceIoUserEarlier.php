<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class InstanceIoUserEarlier extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\InstanceIoUserEarlier $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m__raw_sizedA = $this->_io->readBytes(6);
            $_io__raw_sizedA = new \Kaitai\Struct\Stream($this->_m__raw_sizedA);
            $this->_m_sizedA = new \Kaitai\Struct\Tests\InstanceIoUserEarlier\Slot($_io__raw_sizedA, $this, $this->_root);
            $this->_m__raw_sizedB = $this->_io->readBytes(6);
            $_io__raw_sizedB = new \Kaitai\Struct\Stream($this->_m__raw_sizedB);
            $this->_m_sizedB = new \Kaitai\Struct\Tests\InstanceIoUserEarlier\Slot($_io__raw_sizedB, $this, $this->_root);
            $this->_m_intoB = new \Kaitai\Struct\Tests\InstanceIoUserEarlier\Foo($this->_io, $this, $this->_root);
            $this->_m_intoASkipped = new \Kaitai\Struct\Tests\InstanceIoUserEarlier\Foo($this->_io, $this, $this->_root);
            $this->_m_intoA = new \Kaitai\Struct\Tests\InstanceIoUserEarlier\Foo($this->_io, $this, $this->_root);
            $this->_m_lastAccessor = new \Kaitai\Struct\Tests\InstanceIoUserEarlier\Baz($this->_io, $this, $this->_root);
        }
        public function aMid() {
            if ($this->_m_aMid !== null)
                return $this->_m_aMid;
            $io = $this->intoA()->inst()->_io();
            $_pos = $io->pos();
            $io->seek(1);
            $this->_m_aMid = $io->readU2le();
            $io->seek($_pos);
            return $this->_m_aMid;
        }
        public function bMid() {
            if ($this->_m_bMid !== null)
                return $this->_m_bMid;
            $io = $this->intoB()->inst()->_io();
            $_pos = $io->pos();
            $io->seek(1);
            $this->_m_bMid = $io->readU2le();
            $io->seek($_pos);
            return $this->_m_bMid;
        }
        public function sizedA() { return $this->_m_sizedA; }
        public function sizedB() { return $this->_m_sizedB; }
        public function intoB() { return $this->_m_intoB; }
        public function intoASkipped() { return $this->_m_intoASkipped; }
        public function intoA() { return $this->_m_intoA; }
        public function lastAccessor() { return $this->_m_lastAccessor; }
        public function _raw_sizedA() { return $this->_m__raw_sizedA; }
        public function _raw_sizedB() { return $this->_m__raw_sizedB; }
        protected $_m_aMid;
        protected $_m_bMid;
        protected $_m_sizedA;
        protected $_m_sizedB;
        protected $_m_intoB;
        protected $_m_intoASkipped;
        protected $_m_intoA;
        protected $_m_lastAccessor;
        protected $_m__raw_sizedA;
        protected $_m__raw_sizedB;
    }
}

namespace Kaitai\Struct\Tests\InstanceIoUserEarlier {
    class Baz extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\InstanceIoUserEarlier $_parent = null, ?\Kaitai\Struct\Tests\InstanceIoUserEarlier $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            if ($this->_parent()->intoB()->inst()->last() == 89) {
                $this->_m_v = $this->_io->readU1();
            }
        }
        public function v() { return $this->_m_v; }
        protected $_m_v;
    }
}

namespace Kaitai\Struct\Tests\InstanceIoUserEarlier {
    class Foo extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\InstanceIoUserEarlier $_parent = null, ?\Kaitai\Struct\Tests\InstanceIoUserEarlier $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_indicator = $this->_io->readU1();
            if ( (($this->inst()->_io()->size() != 0) && ($this->inst()->content() == 102)) ) {
                $this->_m_bar = $this->_io->readU1();
            }
        }
        public function inst() {
            if ($this->_m_inst !== null)
                return $this->_m_inst;
            $io = ($this->indicator() == 202 ? $this->_parent()->sizedB()->_io() : $this->_parent()->sizedA()->_io());
            $_pos = $io->pos();
            $io->seek(1);
            $this->_m__raw_inst = $io->readBytes(($this->_io()->pos() != 14 ? 4 : 0));
            $_io__raw_inst = new \Kaitai\Struct\Stream($this->_m__raw_inst);
            $this->_m_inst = new \Kaitai\Struct\Tests\InstanceIoUserEarlier\Slot($_io__raw_inst, $this, $this->_root);
            $io->seek($_pos);
            return $this->_m_inst;
        }
        public function indicator() { return $this->_m_indicator; }
        public function bar() { return $this->_m_bar; }
        public function _raw_inst() { return $this->_m__raw_inst; }
        protected $_m_inst;
        protected $_m_indicator;
        protected $_m_bar;
        protected $_m__raw_inst;
    }
}

namespace Kaitai\Struct\Tests\InstanceIoUserEarlier {
    class Slot extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\InstanceIoUserEarlier $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            if ($this->_io()->size() != 0) {
                $this->_m_content = $this->_io->readU1();
            }
        }
        public function last() {
            if ($this->_m_last !== null)
                return $this->_m_last;
            if ($this->_io()->size() != 0) {
                $_pos = $this->_io->pos();
                $this->_io->seek($this->_io()->size() - 1);
                $this->_m_last = $this->_io->readU1();
                $this->_io->seek($_pos);
            }
            return $this->_m_last;
        }
        public function content() { return $this->_m_content; }
        protected $_m_last;
        protected $_m_content;
    }
}
