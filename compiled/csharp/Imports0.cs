// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System;
using System.Collections.Generic;
using System.Linq;

namespace Kaitai
{
    public partial class Imports0 : KaitaiStruct
    {
        public static Imports0 FromFile(string fileName)
        {
            return new Imports0(new KaitaiStream(fileName));
        }

        public Imports0(KaitaiStream io, KaitaiStruct parent = null, Imports0 root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _parse();
        }

        private void _parse()
        {
            f_hwOne = false;
            _two = m_io.ReadU1();
            _hw = new HelloWorld(m_io);
        }
        private bool f_hwOne;
        private byte _hwOne;
        public byte HwOne
        {
            get
            {
                if (f_hwOne)
                    return _hwOne;
                _hwOne = (byte) (Hw.One);
                f_hwOne = true;
                return _hwOne;
            }
        }
        private byte _two;
        private HelloWorld _hw;
        private Imports0 m_root;
        private KaitaiStruct m_parent;
        public byte Two { get { return _two; } }
        public HelloWorld Hw { get { return _hw; } }
        public Imports0 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
