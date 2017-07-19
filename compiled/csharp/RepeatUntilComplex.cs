// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class RepeatUntilComplex : KaitaiStruct
    {
        public static RepeatUntilComplex FromFile(string fileName)
        {
            return new RepeatUntilComplex(new KaitaiStream(fileName));
        }

        public RepeatUntilComplex(KaitaiStream io, KaitaiStruct parent = null, RepeatUntilComplex root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _read();
        }
        private void _read() {
            _first = new List<TypeU1>();
            {
                TypeU1 M_;
                do {
                    M_ = new TypeU1(m_io, this, m_root);
                    _first.Add(M_);
                } while (!(M_.Count == 0));
            }
            _second = new List<TypeU2>();
            {
                TypeU2 M_;
                do {
                    M_ = new TypeU2(m_io, this, m_root);
                    _second.Add(M_);
                } while (!(M_.Count == 0));
            }
            _third = new List<byte>();
            {
                byte M_;
                do {
                    M_ = m_io.ReadU1();
                    _third.Add(M_);
                } while (!(M_ == 0));
            }
            }
        public partial class TypeU1 : KaitaiStruct
        {
            public static TypeU1 FromFile(string fileName)
            {
                return new TypeU1(new KaitaiStream(fileName));
            }

            public TypeU1(KaitaiStream io, RepeatUntilComplex parent = null, RepeatUntilComplex root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _read();
            }
            private void _read() {
                _count = m_io.ReadU1();
                _values = new List<byte>((int) (Count));
                for (var i = 0; i < Count; i++) {
                    _values.Add(m_io.ReadU1());
                }
                }
            private byte _count;
            private List<byte> _values;
            private RepeatUntilComplex m_root;
            private RepeatUntilComplex m_parent;
            public byte Count { get { return _count; } }
            public List<byte> Values { get { return _values; } }
            public RepeatUntilComplex M_Root { get { return m_root; } }
            public RepeatUntilComplex M_Parent { get { return m_parent; } }
        }
        public partial class TypeU2 : KaitaiStruct
        {
            public static TypeU2 FromFile(string fileName)
            {
                return new TypeU2(new KaitaiStream(fileName));
            }

            public TypeU2(KaitaiStream io, RepeatUntilComplex parent = null, RepeatUntilComplex root = null) : base(io)
            {
                m_parent = parent;
                m_root = root;
                _read();
            }
            private void _read() {
                _count = m_io.ReadU2le();
                _values = new List<ushort>((int) (Count));
                for (var i = 0; i < Count; i++) {
                    _values.Add(m_io.ReadU2le());
                }
                }
            private ushort _count;
            private List<ushort> _values;
            private RepeatUntilComplex m_root;
            private RepeatUntilComplex m_parent;
            public ushort Count { get { return _count; } }
            public List<ushort> Values { get { return _values; } }
            public RepeatUntilComplex M_Root { get { return m_root; } }
            public RepeatUntilComplex M_Parent { get { return m_parent; } }
        }
        private List<TypeU1> _first;
        private List<TypeU2> _second;
        private List<byte> _third;
        private RepeatUntilComplex m_root;
        private KaitaiStruct m_parent;
        public List<TypeU1> First { get { return _first; } }
        public List<TypeU2> Second { get { return _second; } }
        public List<byte> Third { get { return _third; } }
        public RepeatUntilComplex M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
