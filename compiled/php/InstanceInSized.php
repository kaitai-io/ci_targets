<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class InstanceInSized extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\InstanceInSized $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m__raw_cont = $this->_io->readBytes(16);
            $_io__raw_cont = new \Kaitai\Struct\Stream($this->_m__raw_cont);
            $this->_m_cont = new \Kaitai\Struct\Tests\InstanceInSized\Wrapper($_io__raw_cont, $this, $this->_root);
        }
        public function cont() { return $this->_m_cont; }
        public function _raw_cont() { return $this->_m__raw_cont; }
        protected $_m_cont;
        protected $_m__raw_cont;
    }
}

namespace Kaitai\Struct\Tests\InstanceInSized {
    class Bar extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\InstanceInSized\Wrapper $_parent = null, ?\Kaitai\Struct\Tests\InstanceInSized $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_seqF = $this->_io->readU1();
        }
        public function inst() {
            if ($this->_m_inst !== null)
                return $this->_m_inst;
            $_pos = $this->_io->pos();
            $this->_io->seek(4 + 1);
            $this->_m_inst = $this->_io->readBytes(3);
            $this->_io->seek($_pos);
            return $this->_m_inst;
        }
        public function seqF() { return $this->_m_seqF; }
        protected $_m_inst;
        protected $_m_seqF;
    }
}

namespace Kaitai\Struct\Tests\InstanceInSized {
    class Baz extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\InstanceInSized\Wrapper $_parent = null, ?\Kaitai\Struct\Tests\InstanceInSized $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_seqF = $this->_io->readU1();
        }
        public function inst() {
            if ($this->_m_inst !== null)
                return $this->_m_inst;
            $_pos = $this->_io->pos();
            $this->_io->seek(8 + 1);
            $this->_m_inst = $this->_io->readBytes(3);
            $this->_io->seek($_pos);
            return $this->_m_inst;
        }
        public function seqF() { return $this->_m_seqF; }
        protected $_m_inst;
        protected $_m_seqF;
    }
}

namespace Kaitai\Struct\Tests\InstanceInSized {
    class Qux extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\InstanceInSized\Wrapper $_parent = null, ?\Kaitai\Struct\Tests\InstanceInSized $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            if ($this->instInvoked() > 0) {
                $this->_m_seqF = $this->_io->readU1();
            }
        }
        public function instInvoked() {
            if ($this->_m_instInvoked !== null)
                return $this->_m_instInvoked;
            $_pos = $this->_io->pos();
            $this->_io->seek($this->_io()->pos() + 1);
            $this->_m_instInvoked = $this->_io->readU1();
            $this->_io->seek($_pos);
            return $this->_m_instInvoked;
        }
        public function instUnusedBySeq() {
            if ($this->_m_instUnusedBySeq !== null)
                return $this->_m_instUnusedBySeq;
            $_pos = $this->_io->pos();
            $this->_io->seek($this->_io()->pos() + 1);
            $this->_m_instUnusedBySeq = $this->_io->readBytes(2);
            $this->_io->seek($_pos);
            return $this->_m_instUnusedBySeq;
        }
        public function seqF() { return $this->_m_seqF; }
        protected $_m_instInvoked;
        protected $_m_instUnusedBySeq;
        protected $_m_seqF;
    }
}

namespace Kaitai\Struct\Tests\InstanceInSized {
    class Wrapper extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\InstanceInSized $_parent = null, ?\Kaitai\Struct\Tests\InstanceInSized $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m__raw_seqSized = $this->_io->readBytes(4);
            $_io__raw_seqSized = new \Kaitai\Struct\Stream($this->_m__raw_seqSized);
            $this->_m_seqSized = new \Kaitai\Struct\Tests\InstanceInSized\Qux($_io__raw_seqSized, $this, $this->_root);
            $this->_m_seqInStream = new \Kaitai\Struct\Tests\InstanceInSized\Bar($this->_io, $this, $this->_root);
        }
        public function instInStream() {
            if ($this->_m_instInStream !== null)
                return $this->_m_instInStream;
            $_pos = $this->_io->pos();
            $this->_io->seek($this->_io()->pos() + 3);
            $this->_m_instInStream = new \Kaitai\Struct\Tests\InstanceInSized\Baz($this->_io, $this, $this->_root);
            $this->_io->seek($_pos);
            return $this->_m_instInStream;
        }
        public function instSized() {
            if ($this->_m_instSized !== null)
                return $this->_m_instSized;
            $_pos = $this->_io->pos();
            $this->_io->seek($this->_io()->pos() + 7);
            $this->_m__raw_instSized = $this->_io->readBytes(4);
            $_io__raw_instSized = new \Kaitai\Struct\Stream($this->_m__raw_instSized);
            $this->_m_instSized = new \Kaitai\Struct\Tests\InstanceInSized\Qux($_io__raw_instSized, $this, $this->_root);
            $this->_io->seek($_pos);
            return $this->_m_instSized;
        }
        public function seqSized() { return $this->_m_seqSized; }
        public function seqInStream() { return $this->_m_seqInStream; }
        public function _raw_seqSized() { return $this->_m__raw_seqSized; }
        public function _raw_instSized() { return $this->_m__raw_instSized; }
        protected $_m_instInStream;
        protected $_m_instSized;
        protected $_m_seqSized;
        protected $_m_seqInStream;
        protected $_m__raw_seqSized;
        protected $_m__raw_instSized;
    }
}
