// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class DebugArrayUserEofException : KaitaiStruct
    {
        public static DebugArrayUserEofException FromFile(string fileName)
        {
            return new DebugArrayUserEofException(new KaitaiStream(fileName));
        }

        public DebugArrayUserEofException(KaitaiStream p__io, KaitaiStruct p__parent = null, DebugArrayUserEofException p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
        }
        public void _read()
        {
            _oneCat = new Cat(m_io, this, m_root);
            _oneCat._read();
            _arrayOfCats = new List<Cat>();
            for (var i = 0; i < 3; i++)
            {
                Cat _t_arrayOfCats = new Cat(m_io, this, m_root);
                try
                {
                    _t_arrayOfCats._read();
                }
                finally
                {
                    _arrayOfCats.Add(_t_arrayOfCats);
                }
            }
        }
        public partial class Cat : KaitaiStruct
        {
            public static Cat FromFile(string fileName)
            {
                return new Cat(new KaitaiStream(fileName));
            }

            public Cat(KaitaiStream p__io, DebugArrayUserEofException p__parent = null, DebugArrayUserEofException p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
            }
            public void _read()
            {
                _meow = m_io.ReadU1();
                _chirp = m_io.ReadU1();
            }
            public byte Meow { get { return _meow; } }
            public byte Chirp { get { return _chirp; } }
            public DebugArrayUserEofException M_Root { get { return m_root; } }
            public DebugArrayUserEofException M_Parent { get { return m_parent; } }
            private byte _meow;
            private byte _chirp;
            private DebugArrayUserEofException m_root;
            private DebugArrayUserEofException m_parent;
        }
        public Cat OneCat { get { return _oneCat; } }
        public List<Cat> ArrayOfCats { get { return _arrayOfCats; } }
        public DebugArrayUserEofException M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private Cat _oneCat;
        private List<Cat> _arrayOfCats;
        private DebugArrayUserEofException m_root;
        private KaitaiStruct m_parent;
    }
}
