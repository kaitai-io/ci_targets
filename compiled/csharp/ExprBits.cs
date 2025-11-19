// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;
using System;

namespace Kaitai
{
    public partial class ExprBits : KaitaiStruct
    {
        public static ExprBits FromFile(string fileName)
        {
            return new ExprBits(new KaitaiStream(fileName));
        }


        public enum Items
        {
            Foo = 1,
            Bar = 2,
        }
        public ExprBits(KaitaiStream p__io, KaitaiStruct p__parent = null, ExprBits p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_enumInst = false;
            f_instPos = false;
            _read();
        }
        private void _read()
        {
            _enumSeq = ((Items) m_io.ReadBitsIntBe(2));
            _a = m_io.ReadBitsIntBe(3);
            _byteSize = m_io.ReadBytes(A);
            _repeatExpr = new List<sbyte>();
            for (var i = 0; i < A; i++)
            {
                _repeatExpr.Add(m_io.ReadS1());
            }
            switch (A) {
            case 2: {
                _switchOnType = m_io.ReadS1();
                break;
            }
            }
            _switchOnEndian = new EndianSwitch(m_io, this, m_root);
        }
        public partial class EndianSwitch : KaitaiStruct
        {
            public static EndianSwitch FromFile(string fileName)
            {
                return new EndianSwitch(new KaitaiStream(fileName));
            }

            private bool? m_isLe;
            public EndianSwitch(KaitaiStream p__io, ExprBits p__parent = null, ExprBits p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                switch (M_Parent.A) {
                case 1: {
                    m_isLe = (bool) (true);
                    break;
                }
                case 2: {
                    m_isLe = (bool) (false);
                    break;
                }
                }

                if (m_isLe == null) {
                    throw new UndecidedEndiannessError();
                } else if (m_isLe == true) {
                    _readLE();
                } else {
                    _readBE();
                }
            }
            private void _readLE()
            {
                _foo = m_io.ReadS2le();
            }
            private void _readBE()
            {
                _foo = m_io.ReadS2be();
            }
            public short Foo { get { return _foo; } }
            public ExprBits M_Root { get { return m_root; } }
            public ExprBits M_Parent { get { return m_parent; } }
            private short _foo;
            private ExprBits m_root;
            private ExprBits m_parent;
        }
        public Items EnumInst
        {
            get
            {
                if (f_enumInst)
                    return _enumInst;
                f_enumInst = true;
                _enumInst = (Items) (((Items) A));
                return _enumInst;
            }
        }
        public sbyte InstPos
        {
            get
            {
                if (f_instPos)
                    return _instPos;
                f_instPos = true;
                long _pos = m_io.Pos;
                m_io.Seek(A);
                _instPos = m_io.ReadS1();
                m_io.Seek(_pos);
                return _instPos;
            }
        }
        public Items EnumSeq { get { return _enumSeq; } }
        public ulong A { get { return _a; } }
        public byte[] ByteSize { get { return _byteSize; } }
        public List<sbyte> RepeatExpr { get { return _repeatExpr; } }
        public sbyte SwitchOnType { get { return _switchOnType; } }
        public EndianSwitch SwitchOnEndian { get { return _switchOnEndian; } }
        public ExprBits M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private bool f_enumInst;
        private Items _enumInst;
        private bool f_instPos;
        private sbyte _instPos;
        private Items _enumSeq;
        private ulong _a;
        private byte[] _byteSize;
        private List<sbyte> _repeatExpr;
        private sbyte _switchOnType;
        private EndianSwitch _switchOnEndian;
        private ExprBits m_root;
        private KaitaiStruct m_parent;
    }
}
